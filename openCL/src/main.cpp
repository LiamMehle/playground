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


	const int          items_per_group = 64;
	const unsigned int d               = 3;
	const unsigned int n               = 1024;
	const size_t       elem_count      = n * d;
	const size_t       group_count     = ceil(n/(float)items_per_group)*elem_count;
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
	

	float** const h_arrs = (float**) malloc(bytes);

	for(int i = 0; i < n; i++) {
		h_arrs[0][i] = i + 1;
		h_arrs[1][i] = -i;
	}


	cl_mem d_arrs = clCreateBuffer(context, CL_MEM_READ_WRITE , bytes, NULL, &err);
	assert(err==0);
	err = clEnqueueWriteBuffer(queue, d_arrs, CL_TRUE, 0,
    	                           bytes, h_arrs, 0, NULL, NULL);

	err = clSetKernelArg(kernel, 0, bytes, &d_arrs);
	error_check(err);
	err = clSetKernelArg(kernel, 1, sizeof(int), &n);
	error_check(err);

	err  = clEnqueueNDRangeKernel(queue, kernel, 1, NULL, &group_count, &elem_count,
	                             0, NULL, NULL);
	assert(err==0);
	err = clEnqueueReadBuffer(queue, d_arrs, CL_TRUE, 0,
                                bytes, h_arrs, 0, NULL, NULL);
	assert(err==0);
	clFinish(queue);


	printf("%.2f + %.2f = %.2f\n", h_arrs[0][0], h_arrs[1][0], h_arrs[2][0]);
	free(h_arrs);
	return 0;
}