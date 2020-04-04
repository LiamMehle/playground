#define GLEW_STATIC
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


	for(int i = 0; i < BUFFER_COUNT; i++) {
		// VkPipelineStageFlags flags[] { VK_PIPELINE_STAGE_FRAGMENT_SHADER_BIT};
		VkPipelineStageFlags flags[] { VK_PIPELINE_STAGE_ALL_COMMANDS_BIT };
		VkSubmitInfo submit_info {
			.sType                = VK_STRUCTURE_TYPE_SUBMIT_INFO,
			.pWaitSemaphores      = &semaphore,
			.pWaitDstStageMask    = flags,
			.commandBufferCount   = BUFFER_COUNT,
			.pCommandBuffers      = &command_buffer[i],
			.signalSemaphoreCount = 1,
			.pSignalSemaphores    = &semaphore
		};
		vkQueueSubmit(queue, 1, &submit_info, VK_NULL_HANDLE);
	}

	

	// device, fence#, list, wait for all?, max wait time
	// auto ret = vkWaitForFences(device, 1, &fence, VK_TRUE, UINT64_MAX);
	//if(ret != VK_SUCCESS)
	//	puts("gpu still busy");
	//vkQueueWaitIdle(queue);

	
	



	vkDestroyCommandPool(device, command_pool, nullptr);
	vkDestroyFence(device, fence, nullptr);	

	return 0;
}
