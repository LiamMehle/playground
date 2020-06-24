#ifndef RENDERER_H
#define RENDERER_H

#include <iostream>
#include <vulkan/vulkan.h>
#include <GLFW/glfw3.h>
#include <assert.h>
#include <pthread.h>
#include <vector>
#include <string.h>

// useful for validity checking with minimal performance hit due to branching
#define unlikely(x) (__builtin_expect(x, 0))

enum renderer_errors {
	OK = 0,
	ENODEVICE
};

class renderer {
private:
	VkInstance       instance              = 0;
	VkPhysicalDevice physical_device       = 0;
	VkDevice         vk_device             = 0;
	VkImage          vk_image              = 0;

	std::vector<char*>    instance_extensions;
	std::vector<char*>    instance_layers;
	std::vector<uint32_t> queue_family_indicies;
	std::vector<char*>    vk_device_extensions;

	void get_required_instance_extensions();
public:
	int  create_entety();
	int  choose_device();
	int  create_device();
	int  create_image();
	int  create_buffer();

	int  init();

	void destroy_image();
	void destroy_buffer();
	void destroy_entety();
	void destroy_device();
	void destroy_renderer();

	void terminate();

	void garbage_collect();
};

#endif