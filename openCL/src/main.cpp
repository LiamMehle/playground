#define CL_USE_DEPRICATED_OPENCL_2_0_APIS

#include <iostream>
#include <CL/cl.h>
#include <vector>
#include <assert.h>
#include <fstream>
#include <math.h>
#include <sys/mman.h>
#include <sys/types.h>
#include <fcntl.h>
#include <sys/stat.h>
#include <unistd.h>


#define KERNEL_PATH "/home/wolf/git/playground/openCL/src/kernel.cl"


void error_check(cl_int err) {
#define CASE(x) case x: puts(#x); break;
	switch(err) {
		CASE(CL_INVALID_PROGRAM)
		CASE(CL_INVALID_PROGRAM_EXECUTABLE)
		CASE(CL_INVALID_KERNEL_NAME)
		CASE(CL_INVALID_KERNEL_DEFINITION)
		CASE(CL_INVALID_VALUE)
		CASE(CL_INVALID_KERNEL)

		CASE(CL_INVALID_ARG_INDEX)
		CASE(CL_INVALID_ARG_VALUE)
		CASE(CL_INVALID_MEM_OBJECT)
		CASE(CL_INVALID_SAMPLER)
		CASE(CL_INVALID_ARG_SIZE)
		CASE(CL_OUT_OF_RESOURCES)
		CASE(CL_OUT_OF_HOST_MEMORY)

		//CASE(CL_INVALID_PROGRAM_EXECUTABLE) already defined
		CASE(CL_INVALID_COMMAND_QUEUE)
		//CASE(CL_INVALID_KERNEL) already defined
		CASE(CL_INVALID_CONTEXT)
		CASE(CL_INVALID_KERNEL_ARGS)
		CASE(CL_INVALID_WORK_DIMENSION)
		CASE(CL_INVALID_WORK_GROUP_SIZE)
		//CASE(CL_INVALID_WORK_GROUP_SIZE) doc repeats it's self
		//CASE(CL_INVALID_WORK_GROUP_SIZE)
		CASE(CL_INVALID_WORK_ITEM_SIZE)
		CASE(CL_INVALID_GLOBAL_OFFSET)
		//CASE(CL_OUT_OF_RESOURCES) already defined
		CASE(CL_DEVICE_MAX_READ_IMAGE_ARGS)
		CASE(CL_MEM_OBJECT_ALLOCATION_FAILURE)
		CASE(CL_INVALID_EVENT_WAIT_LIST)
		//CASE(CL_OUT_OF_HOST_MEMORY) already defined
		case 0:  break;
		default: break;
	}
	assert(err == 0);
#undef CASE
}


int main() {

	cl_platform_id   platform = NULL;   // OpenCL platform
	cl_device_id     device_id;  // device ID
	cl_context       context;    // context
	cl_command_queue queue;      // command queue
	cl_program       program;    // program
	cl_kernel        kernel;     // kernel


	const size_t       local_size      = 16;
	const unsigned int d               = 3;
	const unsigned int n               = 1024;
	const size_t       elem_count      = n * d;
	const size_t       global_size     = ceil(n/(float)local_size)*local_size;
	const size_t       bytes           = elem_count*sizeof(float);
	int err;
	err = clGetPlatformIDs(1, &platform, NULL);
	assert(err==0);
	err = clGetDeviceIDs(platform, CL_DEVICE_TYPE_GPU, 1, &device_id, NULL);
	assert(err==0);
	context = clCreateContext(0, 1, &device_id, NULL, NULL, &err);
	assert(err==0);
	queue = clCreateCommandQueue(context, device_id, 0, &err);
	assert(err==0);

	// open kernel file and map to memory
	int kernel_fd = open(KERNEL_PATH, O_RDONLY, 0);
	struct stat kernel_source_stat;
	err = fstat(kernel_fd, &kernel_source_stat);
	assert(err==0);
	char* __restrict const kernel_source = (char*) mmap(nullptr,
		kernel_source_stat.st_size, PROT_READ, MAP_PRIVATE, kernel_fd, 0);

	program = clCreateProgramWithSource(context, 1,
	                        (const char **)& kernel_source, NULL, &err);

	assert(err==0);
	clBuildProgram(program, 0, NULL, NULL, NULL, NULL);
	kernel = clCreateKernel(program, "v_add", &err);
	error_check(err);
	
	
	// kernel file cleanup
	munmap(kernel_source, kernel_source_stat.st_size);
	close(kernel_fd);
	// generate array
	
#define at_index(ptr, y, x, stride) ptr[x+y*stride]
	float* const h_arrs = (float*) malloc(bytes);

	for(int i = 0; i < n; i++) {
		at_index(h_arrs, 0, i, n) = i + 1;
		at_index(h_arrs, 1, i, n) = -i;
	}


	cl_mem d_arrs = clCreateBuffer(context, CL_MEM_READ_WRITE , bytes, NULL, &err);
	assert(err==0);
	err = clEnqueueWriteBuffer(queue, d_arrs, CL_TRUE, 0,
    	                           bytes, h_arrs, 0, NULL, NULL);

	// setting sizeof() to bytes will create a bus error, which is interesting
	err = clSetKernelArg(kernel, 0, sizeof(float*), &d_arrs);
	error_check(err);
	err = clSetKernelArg(kernel, 1, sizeof(int), &n);
	error_check(err);

	err  = clEnqueueNDRangeKernel(queue, kernel, 1, NULL, &global_size, &local_size,
	                             0, NULL, NULL);
	error_check(err);
	err = clEnqueueReadBuffer(queue, d_arrs, CL_TRUE, 0,
                                bytes, h_arrs, 0, NULL, NULL);
	assert(err==0);
	clFinish(queue);

	// first print, for responsive feel
	printf("%.2f + %.2f = %.2f\n", at_index(h_arrs, 0, 0, n), at_index(h_arrs, 0, 1, n), at_index(h_arrs, 0, 2, n));

	// then cleanup
	clReleaseMemObject(d_arrs);
	clReleaseProgram(program);
	clReleaseKernel(kernel);
	clReleaseCommandQueue(queue);
	clReleaseContext(context);
	free(h_arrs);
	return 0;
}