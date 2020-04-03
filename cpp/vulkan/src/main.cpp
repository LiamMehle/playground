#define GLEW_STATIC
#include "renderer.h"
#include <stdio.h>
#include <iostream>
#include <GLFW/glfw3.h>

//#define VERBOSE

int main(void) {
#ifdef VERBOSE
	puts("initing renderer");
#endif
	renderer r;
	auto device = r.device;
#ifdef VERBOSE
	puts("making command pool");
#endif
	VkCommandPool command_pool;

	VkCommandPoolCreateInfo pool_create_info {
		.sType            =VK_STRUCTURE_TYPE_COMMAND_POOL_CREATE_INFO,
		.flags            = VK_COMMAND_POOL_CREATE_RESET_COMMAND_BUFFER_BIT,
		.queueFamilyIndex = r.graphics_family_index,

	};
#ifdef VERBOSE
	puts("calling bad function");
#endif
	vkCreateCommandPool(device, &pool_create_info, nullptr, &command_pool);



	vkDestroyCommandPool(device, command_pool, nullptr);

	return 0;
}
