#define CL_USE_DEPRECATED_OPENCL_2_0_APIS

#include <stdio.h>
#include <stdint.h>
#include <vector>
#include <fstream>
#include <CL/cl.hpp>


int main() {
	cl::Platform platform;
	{
		std::vector<cl::Platform> platforms; // variable to store platforms
		cl::Platform::get(&platforms);      // populate platforms
		int n = platforms.size();
		if(n == 0) {
			puts("no platforms found!");
			return -1;
		}
		printf("platforms found:%2d\n", n);
		platform = platforms.front();
	}

	cl::Device device;
	{
		std::vector<cl::Device> devices;
		platform.getDevices(CL_DEVICE_TYPE_GPU, &devices);
		device = devices.front();
	}

	std::ifstream hwFile("hw_kernel.cl");
	std::string src(std::istreambuf_iterator<char>(hwFile), (std::istreambuf_iterator<char>()));
	//printf("src:\n%s\n", src.c_str());

	cl::Program::Sources sources(1, std::make_pair(src.c_str(), src.length()+1));

	cl::Context context(device);

	cl::Program program(context, sources);

	auto err = program.build("-cl-std=CL1.2");
	char buff[14];
	cl::Buffer memBuff(context, CL_MEM_WRITE_ONLY|CL_MEM_HOST_READ_ONLY, sizeof(buff));
	cl::Kernel kernel(program, "hw_kernel", &err);
	kernel.setArg(0, memBuff);

	puts("done compiling");

	cl::CommandQueue q(context, device);
	err = q.enqueueNDRangeKernel(kernel, cl::NullRange, cl::NDRange(sizeof(buff))); // add kernel to queue, then add read command to queue
	if(err!=0)
		return -2;
	q.enqueueReadBuffer(memBuff, CL_FALSE, 0, sizeof(buff), buff);

	cl::finish(); // wait for the queue to finish 
	printf("%s", buff);
	return 0;
}