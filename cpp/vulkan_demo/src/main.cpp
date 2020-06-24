#include "renderer.h"
#include "io_helper.h"

#include <stdio.h>

renderer r;

// I'm sorry for the notation abomination
[[gnu::cold]]

int main( int argc, const char** argv, const char** env ) {
	// init the library
	if(unlikely(!glfwInit())) {
		log(log_type::error_fatal, "failed to initialize glfw." );
		return -1;
	}

	// check if vulkan is supported
	if(unlikely(!glfwVulkanSupported())) {
		log(log_type::error_fatal, "no vulkan support detected (by glfw)." );
		return -2;
	}


	int ret;
	ret = r.create_entety();
	if(unlikely(ret)) return 1;
	ret = r.choose_device();
	if(unlikely(ret)) return 2;
	std::cout << std::endl;
	ret = r.create_device();
	if(unlikely(ret)) {std::cout << ret << std::endl; return 3;}
	std::cout << std::endl;
	std::cout << "finished" << std::endl;
	return 0;
}