#define CL_USE_DEPRICATED_OPENCL_2_0_APIS

#include <iostream>
#include <CL/cl.hpp>
#include <vector>
#include <assert.h>
#include <ifstream>

int main() {
	std::vector<cl::Platform> platforms;
	cl::Platform::get(&platforms);
	assert(platforms.size() > 0);
	auto platform = platforms.front();

	std::vector<cl::Device> devices;
	platform.getDevices(CL_DEVICE_TYPE_GPU, &devices);
	auto gpu = devices.front();
	std::ifstream kernel_file("kernel.cl");
	std::string kerel_src(std::ifstreambuf_iterator<char>(kernel_file), std::instreambuf_iterator<char>());
	
	return 0;
}