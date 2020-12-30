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

constexpr auto display_width = 1280, display_height = 720;

enum renderer_errors {
	OK = 0,
	ENODEVICE
};

class renderer {
private:
	VkInstance       instance        = 0;
	VkPhysicalDevice physical_device = 0;
	VkDevice         vk_device       = 0;
	VkImage          vk_image        = 0;
	VkBuffer         vk_buffer       = 0;
	VkImageView      image_view      = 0;
	VkDeviceMemory   device_memory   = 0;
	VkCommandPool    command_pool    = 0;

	std::vector<char*>           instance_extensions;
	std::vector<char*>           instance_layers;
	std::vector<char*>           vk_device_extensions;
	std::vector<uint32_t>        queue_family_indicies;
	std::vector<VkCommandBuffer> command_buffers;


	void   get_required_instance_extensions() /*noexcept*/;
	size_t get_required_memory_size()         /*noexcept*/;
	size_t get_required_buffer_size()         /*noexcept*/;
public:
	int  create_entety()            /*noexcept*/;
	int  choose_device()            /*noexcept*/;
	int  create_device()            /*noexcept*/;
	int  create_image()             /*noexcept*/;
	int  create_buffer()            /*noexcept*/;
	int  create_image_view()        /*noexcept*/;
	int  bind_image_memory()        /*noexcept*/;
	int  allocate_memory()          /*noexcept*/;
	int  create_command_pool()      /*noexcept*/;
	int  allocate_command_buffers() /*noexcept*/;

	int  init()                     noexcept;

	void terminate()                /*noexcept*/;

	void garbage_collect()          /*noexcept*/;
};

#endif