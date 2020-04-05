#define GLEW_STATIC
#define GLFW_INCLUDE_VULKAN
#include "renderer.h"
#include <stdio.h>
#include <iostream>
#include <GLFW/glfw3.h>


#define BUFFER_COUNT 2
//#define VERBOSE

int main(void) {
#ifdef VERBOSE
	puts("initing renderer");
#endif
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
		.sType            =VK_STRUCTURE_TYPE_COMMAND_POOL_CREATE_INFO,
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
	
	vkCmdPipelineBarrier(command_buffer[0],
		VK_PIPELINE_STAGE_ALL_COMMANDS_BIT,
		VK_PIPELINE_STAGE_ALL_COMMANDS_BIT,
		0,
		0, nullptr,
		0, nullptr,
		0, nullptr);

	VkViewport viewport {
		.x = 0,
		.y = 0,
		.width = 512,
		.height = 512,
		.minDepth = 0.0f,
		.maxDepth = 1.0f
	};
	vkCmdSetViewport(command_buffer[0], 0, 1, &viewport);



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
		for(int i = 0; i < properties.memoryTypeCount; i++) {
			log_var(i);
			auto flags = properties.memoryTypes[i].propertyFlags;
			if(flags & VK_MEMORY_PROPERTY_DEVICE_LOCAL_BIT)
				std::cout << "VK_MEMORY_PROPERTY_DEVICE_LOCAL_BIT" << std::endl;
    		if(flags & VK_MEMORY_PROPERTY_HOST_VISIBLE_BIT)
    			std::cout << "VK_MEMORY_PROPERTY_HOST_VISIBLE_BIT" << std::endl;
    		if(flags & VK_MEMORY_PROPERTY_HOST_COHERENT_BIT)
    			std::cout << "VK_MEMORY_PROPERTY_HOST_COHERENT_BIT" << std::endl;
    		if(flags & VK_MEMORY_PROPERTY_HOST_CACHED_BIT)
    			std::cout << "VK_MEMORY_PROPERTY_HOST_CACHED_BIT" << std::endl;
    		if(flags & VK_MEMORY_PROPERTY_LAZILY_ALLOCATED_BIT)
    			std::cout << "VK_MEMORY_PROPERTY_LAZILY_ALLOCATED_BIT" << std::endl;
		}
		std::cout << std::endl;
		for(int i = 0; i < properties.memoryHeapCount; i++) {
			log_var(i);
			auto flags = properties.memoryHeaps[i].flags;
			if(flags)
				std::cout << "VK_MEMORY_HEAP_DEVICE_LOCAL_BIT" << std::endl;
		}
	}
#endif
	VkImage image = VK_NULL_HANDLE;
	{
		VkImageCreateInfo image_create_info {
			.sType         = VK_STRUCTURE_TYPE_IMAGE_CREATE_INFO,
			.imageType     = VK_IMAGE_TYPE_2D,
			.format        = VK_FORMAT_B8G8R8_UINT,
			.extent        = {
				.width     = 512,
				.height    = 512,
				.depth     = 1
			},
			.arrayLayers   = 1,
			.samples       = VK_SAMPLE_COUNT_1_BIT,
			.tiling        = VK_IMAGE_TILING_OPTIMAL,
			.usage         = VK_IMAGE_USAGE_TRANSFER_SRC_BIT,
			.initialLayout = VK_IMAGE_LAYOUT_TRANSFER_SRC_OPTIMAL
		};
		error_check(vkCreateImage(device, &image_create_info, VK_NULL_HANDLE, &image));
	}
	
	GLFWwindow* window = glfwCreateWindow(512, 512, "hello triangle", NULL, NULL);
	if(windo == NULL)
		std::exit(1);

	while (!glfwWindowShouldClose(window)) {
 
		glfwSwapBuffers(window);
		glfwPollEvents();
	}





	// semaphor
	vkDestroyCommandPool(device, command_pool, nullptr);
	vkDestroyFence(device, fence, nullptr);	
	std::exit(0);
	return 0;
}
