#define CL_USE_DEPRICATED_OPENCL_2_0_APIS
//#define NDEBUG
#include "config.h"
#include <stdio.h>
#include <CL/cl.h>
#include <assert.h>
#include <math.h>
#include <sys/mman.h>
#include <sys/types.h>
#include <fcntl.h>
#include <sys/stat.h>
#include <unistd.h>
#include <sys/time.h>
#include <omp.h>




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
	printf("using type of size %lu\n", sizeof(VAR_TYPE));

	struct timeval t0, t1;
	double setup_time, gpu_time, cpu_time;
	gettimeofday(&t0, NULL);

	cl_platform_id   platform = NULL;   // OpenCL platform
	cl_device_id     device_id;  // device ID
	cl_context       context;    // context
	cl_command_queue queue;      // command queue
	cl_program       program;    // program
	cl_kernel        kernel;     // kernel


	const size_t       local_size      = 1024;
	const unsigned int d               = 3;            // layers
	const unsigned int n               = 1024*1024*32; // elements per layer
	const size_t       elem_count      = n * d;        // total elements
	const size_t       global_size     = ceil(n/(float)local_size)*local_size;
	const size_t       bytes           = elem_count*sizeof(VAR_TYPE);
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
	char* __restrict const kernel_source = (char*) mmap(NULL,
		kernel_source_stat.st_size, PROT_READ, MAP_PRIVATE, kernel_fd, 0);

	program = clCreateProgramWithSource(context, 1,
	                        (const char **)& kernel_source, NULL, &err);

	assert(err==0);
	clBuildProgram(program, 0, NULL, NULL, NULL, NULL);
	kernel = clCreateKernel(program, "v_add", &err);
	if(err) {
		char* log_buffer = (char*) malloc(4096);
		clGetProgramBuildInfo(program, device_id, CL_PROGRAM_BUILD_LOG,
			4096, log_buffer, NULL);
		puts(log_buffer);
		free(log_buffer);
	}
	error_check(err);
	
	
	// kernel file cleanup
	munmap(kernel_source, kernel_source_stat.st_size);
	close(kernel_fd);
	// generate array
	

	VAR_TYPE* const h_arrs = (VAR_TYPE*) malloc(bytes);

	for(int i = 0; i < n; i++) {
		at_index(h_arrs, 0, i, n) = i + 1;
		at_index(h_arrs, 1, i, n) = -i;
	}


	cl_mem d_arrs = clCreateBuffer(context, CL_MEM_READ_WRITE , bytes, NULL, &err);
	error_check(err);
	err = clEnqueueWriteBuffer(queue, d_arrs, CL_TRUE, 0,
	                               bytes, h_arrs, 0, NULL, NULL);
	error_check(err);
	// setting sizeof() to bytes will create a bus error, which is interesting
	err = clSetKernelArg(kernel, 0, sizeof(VAR_TYPE*), &d_arrs);
	error_check(err);
	err = clSetKernelArg(kernel, 1, sizeof(int), &n);
	error_check(err);

	clFinish(queue);

	gettimeofday(&t1, NULL);
	setup_time =  (t1.tv_sec  - t0.tv_sec)  * 1000.0; // s  to ms
	setup_time += (t1.tv_usec - t0.tv_usec) / 1000.0; // us to ms
	puts("executing");
	gettimeofday(&t0, NULL);

	#pragma omp parallel for schedule(guided,4)
	for(int i = 0; i < RUNS_GPU; i++)
		err  = clEnqueueNDRangeKernel(queue, kernel, 1, NULL, &global_size, &local_size,
	                             0, NULL, NULL);
	
	err = clEnqueueReadBuffer(queue, d_arrs, CL_TRUE, 0,
	                            bytes, h_arrs, 0, NULL, NULL);
	clFinish(queue);
	gettimeofday(&t1, NULL);
	error_check(err);
	gpu_time =  (t1.tv_sec  - t0.tv_sec)  * 1000.0; // s  to ms
	gpu_time += (t1.tv_usec - t0.tv_usec) / 1000.0; // us to ms
	gpu_time /= RUNS_GPU;

	// first print, for responsive feel

	printf("sin%7.2f + cos%7.2f = %7.2f\n", (float)at_index(h_arrs, 0, 0, n), (float)at_index(h_arrs, 1, 0, n), (float)at_index(h_arrs, 2, 0, n));


	gettimeofday(&t0, NULL);

	/*#pragma omp parallel for schedule(guided,512)
	for(int i = 0; i < n; i++)
		at_index(h_arrs, 2, i, n) = sin(at_index(h_arrs, 0, i, n)) + cos(at_index(h_arrs, 1, i, n));
	*/
	gettimeofday(&t1, NULL);
	cpu_time =  (t1.tv_sec  - t0.tv_sec)  * 1000.0; // s  to ms
	cpu_time += (t1.tv_usec - t0.tv_usec) / 1000.0; // us to ms

	printf("sin%7.2f + cos%7.2f = %7.2f\n", (float)at_index(h_arrs, 0, 0, n), (float)at_index(h_arrs, 1, 0, n), (float)at_index(h_arrs, 2, 0, n));


	puts("\n\n");
	printf("setup_time =\t%7.2fms\ngpu_time =\t%7.2fms\ncpu_time =\t%7.2fms\n", setup_time, gpu_time, cpu_time);


	// then cleanup
	clReleaseMemObject(d_arrs);
	clReleaseProgram(program);
	clReleaseKernel(kernel);
	clReleaseCommandQueue(queue);
	clReleaseContext(context);
	free(h_arrs);
	return 0;
}
