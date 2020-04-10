#define GLEW_STATIC
#define GLFW_INCLUDE_VULKAN
#define VERBOSE
#include "renderer.h"
#include <stdio.h>
#include <iostream>
#include <GLFW/glfw3.h>


#define BUFFER_COUNT 2


void error_callback(int error, const char* description)
{
   std::cout << "[ERROR] " << error << " " << description << std::endl;
}

int main(void) {
#ifdef VERBOSE
	puts("initing renderer");
#endif
	/*if (!glfwVulkanSupported())
		std::exit(99);
	*/

	renderer r;
	auto device = r.device;
	auto queue  = r.queue;

	/*
	a VkFence waits for the gpu to finish on the host side
	v VkSemaphore has the gpu wait for the host to be ready
	*/
	VkFence fence;
	VkFenceCreateInfo fence_create_info {
		.sType = VK_STRUCTURE_TYPE_FENCE_CREATE_INFO
	};
	vkCreateFence(device, &fence_create_info, nullptr, &fence);

	VkSemaphore semaphore;
	VkSemaphoreCreateInfo semaphore_create_info {
		.sType   = VK_STRUCTURE_TYPE_SEMAPHORE_CREATE_INFO,
	};

	vkCreateSemaphore(device, &semaphore_create_info, nullptr, &semaphore);
#ifdef VERBOSE
	puts("making command pool");
#endif
	
	VkCommandPool command_pool;

	VkCommandPoolCreateInfo pool_create_info {
		.sType            = VK_STRUCTURE_TYPE_COMMAND_POOL_CREATE_INFO,
		.flags            = VK_COMMAND_POOL_CREATE_RESET_COMMAND_BUFFER_BIT,
		.queueFamilyIndex = r.graphics_family_index,

	};
	vkCreateCommandPool(device, &pool_create_info, nullptr, &command_pool);


	VkCommandBuffer command_buffer[BUFFER_COUNT];
	VkCommandBufferAllocateInfo Vk_command_buffer_allocate_info {
		.sType              = VK_STRUCTURE_TYPE_COMMAND_BUFFER_ALLOCATE_INFO,
		.commandPool        = command_pool,
		.level              = VK_COMMAND_BUFFER_LEVEL_PRIMARY,
		.commandBufferCount = BUFFER_COUNT
	};
	vkAllocateCommandBuffers(device, &Vk_command_buffer_allocate_info, command_buffer);

	VkCommandBufferBeginInfo begin_info {
		.sType = VK_STRUCTURE_TYPE_COMMAND_BUFFER_BEGIN_INFO
	};
	for(int i = 0; i < BUFFER_COUNT; i++)
		vkBeginCommandBuffer(command_buffer[i], &begin_info); // enables buffer writable state
	VkPipelineStageFlags flags[] { VK_PIPELINE_STAGE_ALL_COMMANDS_BIT };
	
	/*
	vkCmdPipelineBarrier(command_buffer[0],
		VK_PIPELINE_STAGE_ALL_COMMANDS_BIT,
		VK_PIPELINE_STAGE_ALL_COMMANDS_BIT,
		0,
		0, nullptr,
		0, nullptr,
		0, nullptr);
	*/

	struct window_size_t {
		int x;
		int y;
	};
	window_size_t window_size {
		.x = 512,
		.y = 512
	};

	VkViewport viewport {
		.x        = 0,
		.y        = 0,
		.width    = window_size.x,
		.height   = window_size.y,
		.minDepth = 0.0f,
		.maxDepth = 1.0f
	};

	vkCmdSetViewport(command_buffer[0], 0, 1, &viewport);

	//vkCmdDraw(command_buffer[0], 3, 1, 0, 0);

	for(int i = 0; i < BUFFER_COUNT; i++)
		vkEndCommandBuffer(command_buffer[i]); // compiles commands stored into exec state


	{
		VkSubmitInfo submit_info[BUFFER_COUNT];
		VkPipelineStageFlags flags[] { VK_PIPELINE_STAGE_ALL_COMMANDS_BIT };
		for(int i = 0; i < BUFFER_COUNT; i++) {
			// VkPipelineStageFlags flags[] { VK_PIPELINE_STAGE_FRAGMENT_SHADER_BIT};
			submit_info[i] = {
				.sType                = VK_STRUCTURE_TYPE_SUBMIT_INFO,
				.pNext                = &submit_info[i+1],
				.pWaitSemaphores      = &semaphore,
				.pWaitDstStageMask    = flags,
				.commandBufferCount   = BUFFER_COUNT,
				.pCommandBuffers      = &command_buffer[i],
				.signalSemaphoreCount = 1,
				.pSignalSemaphores    = &semaphore
			};
		}
		submit_info[BUFFER_COUNT-1].pNext = VK_NULL_HANDLE;
		vkQueueSubmit(queue, 1, &submit_info[0], VK_NULL_HANDLE);
	}


	// device, fence#, list, wait for all?, max wait time
	// auto ret = vkWaitForFences(device, 1, &fence, VK_TRUE, UINT64_MAX);
	//if(ret != VK_SUCCESS)
	//	puts("gpu still busy");
	//vkQueueWaitIdle(queue);

	// making the buffer


#ifdef VERBOSE
	{
		assert(device != VK_NULL_HANDLE);
		VkPhysicalDeviceMemoryProperties properties;
		vkGetPhysicalDeviceMemoryProperties(r.gpu, &properties);
		std::cout << "physical device memory properties" << std::endl;
		for(int i = 0; i < properties.memoryTypeCount; i++) {
			log_var(i);
			auto flags = properties.memoryTypes[i].propertyFlags;
			//check for and log if val is present in var flag-set
			#define log_bit(var, val) if(var & val) std::cout << #val << std::endl
			log_bit(flags, VK_MEMORY_PROPERTY_DEVICE_LOCAL_BIT);
			log_bit(flags, VK_MEMORY_PROPERTY_HOST_VISIBLE_BIT);
			log_bit(flags, VK_MEMORY_PROPERTY_HOST_COHERENT_BIT);
			log_bit(flags, VK_MEMORY_PROPERTY_HOST_CACHED_BIT);
			log_bit(flags, VK_MEMORY_PROPERTY_LAZILY_ALLOCATED_BIT);
			#undef log_bit
		}
		std::cout << std::endl;
		for(int i = 0; i < properties.memoryHeapCount; i++) {
			log_var(i);
			auto flags = properties.memoryHeaps[i].flags;
			if(flags)
				std::cout << "VK_MEMORY_HEAP_DEVICE_LOCAL_BIT" << std::endl;
		}
	}
	std::cout << std::endl;
	std::cout << std::endl;
#endif


	VkImage image;
	{
		VkFormatProperties format_properties;
		vkGetPhysicalDeviceFormatProperties(r.gpu, VK_FORMAT_B8G8R8_UINT, &format_properties);
//#ifdef VERBOSE
		//check for and log if val is present in var flag-set
#define log_bit(var, val) if(var & val) std::cout << #val << std::endl

		std::cout << "supported linear tiling features" << std::endl;

		auto flags = format_properties.linearTilingFeatures;
		log_bit(flags, VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT);
		log_bit(flags, VK_FORMAT_FEATURE_STORAGE_IMAGE_BIT);
		log_bit(flags, VK_FORMAT_FEATURE_STORAGE_IMAGE_ATOMIC_BIT);
		log_bit(flags, VK_FORMAT_FEATURE_UNIFORM_TEXEL_BUFFER_BIT);
		log_bit(flags, VK_FORMAT_FEATURE_STORAGE_TEXEL_BUFFER_BIT);
		log_bit(flags, VK_FORMAT_FEATURE_STORAGE_TEXEL_BUFFER_ATOMIC_BIT);
		log_bit(flags, VK_FORMAT_FEATURE_VERTEX_BUFFER_BIT);
		log_bit(flags, VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT);
		log_bit(flags, VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BLEND_BIT);
		log_bit(flags, VK_FORMAT_FEATURE_DEPTH_STENCIL_ATTACHMENT_BIT);
		log_bit(flags, VK_FORMAT_FEATURE_BLIT_SRC_BIT);
		log_bit(flags, VK_FORMAT_FEATURE_BLIT_DST_BIT);
		log_bit(flags, VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_LINEAR_BIT);

		std::cout << std::endl << "supported optimal tiling features" << std::endl;

		flags = format_properties.optimalTilingFeatures;
		log_bit(flags, VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT);
		log_bit(flags, VK_FORMAT_FEATURE_STORAGE_IMAGE_BIT);
		log_bit(flags, VK_FORMAT_FEATURE_STORAGE_IMAGE_ATOMIC_BIT);
		log_bit(flags, VK_FORMAT_FEATURE_UNIFORM_TEXEL_BUFFER_BIT);
		log_bit(flags, VK_FORMAT_FEATURE_STORAGE_TEXEL_BUFFER_BIT);
		log_bit(flags, VK_FORMAT_FEATURE_STORAGE_TEXEL_BUFFER_ATOMIC_BIT);
		log_bit(flags, VK_FORMAT_FEATURE_VERTEX_BUFFER_BIT);
		log_bit(flags, VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT);
		log_bit(flags, VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BLEND_BIT);
		log_bit(flags, VK_FORMAT_FEATURE_DEPTH_STENCIL_ATTACHMENT_BIT);
		log_bit(flags, VK_FORMAT_FEATURE_BLIT_SRC_BIT);
		log_bit(flags, VK_FORMAT_FEATURE_BLIT_DST_BIT);
		log_bit(flags, VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_LINEAR_BIT);

		std::cout << std::endl << "supported buffer features" << std::endl;

		flags = format_properties.bufferFeatures;
		log_bit(flags, VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT);
		log_bit(flags, VK_FORMAT_FEATURE_STORAGE_IMAGE_BIT);
		log_bit(flags, VK_FORMAT_FEATURE_STORAGE_IMAGE_ATOMIC_BIT);
		log_bit(flags, VK_FORMAT_FEATURE_UNIFORM_TEXEL_BUFFER_BIT);
		log_bit(flags, VK_FORMAT_FEATURE_STORAGE_TEXEL_BUFFER_BIT);
		log_bit(flags, VK_FORMAT_FEATURE_STORAGE_TEXEL_BUFFER_ATOMIC_BIT);
		log_bit(flags, VK_FORMAT_FEATURE_VERTEX_BUFFER_BIT);
		log_bit(flags, VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT);
		log_bit(flags, VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BLEND_BIT);
		log_bit(flags, VK_FORMAT_FEATURE_DEPTH_STENCIL_ATTACHMENT_BIT);
		log_bit(flags, VK_FORMAT_FEATURE_BLIT_SRC_BIT);
		log_bit(flags, VK_FORMAT_FEATURE_BLIT_DST_BIT);
		log_bit(flags, VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_LINEAR_BIT);

#undef log_bit
//#endif

		VkImageCreateInfo image_create_info {
			.sType                 = VK_STRUCTURE_TYPE_APPLICATION_INFO,
			.pNext                 = NULL,
			.flags                 = VK_IMAGE_CREATE_MUTABLE_FORMAT_BIT,
			.imageType             = VK_IMAGE_TYPE_2D,
			.format                = VK_FORMAT_B8G8R8_UINT,
			.extent = {
				.width                 = window_size.x,
				.height                = window_size.y,
				.depth                 = 3
			},
			.mipLevels             = 1,
			.arrayLayers           = 1,
			.samples               = VK_SAMPLE_COUNT_1_BIT,
			.tiling                = VK_IMAGE_TILING_OPTIMAL,
			.usage                 = VK_IMAGE_USAGE_DEPTH_STENCIL_ATTACHMENT_BIT,
			.sharingMode           = VK_SHARING_MODE_CONCURRENT,
			.queueFamilyIndexCount = 1,
			.pQueueFamilyIndices   = &r.graphics_family_index,
			.initialLayout         = VK_IMAGE_LAYOUT_UNDEFINED
		};
		// error_check(vkCreateImage(device, &image_create_info, nullptr, &image));
	}

	glfwSetErrorCallback(error_callback);
	glfwInit();
	/*if(glfwInit() != 0) {
		std::cout << "failed to init glfw, exiting" << std::endl;
		std::exit(2);
	}*/
	glfwWindowHint(GLFW_CLIENT_API, GLFW_NO_API);
	GLFWwindow* window = glfwCreateWindow(window_size.x, window_size.y, "hello triangle", NULL, NULL);
	if(window == NULL) {
		std::cout << "failed to create window, exiting" << std::endl;
		std::exit(1);
	}

	VkSurfaceKHR surface;
	error_check(glfwCreateWindowSurface(r.instance, window, NULL, &surface));

	for(;;);
	while (!glfwWindowShouldClose(window)) {
		glfwGetWindowSize(window, &window_size.x, &window_size.y);
		glfwSwapBuffers(window);
		glfwPollEvents();
	}





	// semaphor
	vkDestroyCommandPool(device, command_pool, nullptr);
	vkDestroyFence(device, fence, nullptr);	
	std::exit(0);
	return 0;
}
