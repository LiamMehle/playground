#include "renderer_common.h"

int renderer::allocate_command_buffers() {
	const auto command_buffer_count = 1;
	this->command_buffers.reserve(command_buffer_count);


	const VkCommandBufferAllocateInfo command_buffer_allocate_info = {
    	.sType              = VK_STRUCTURE_TYPE_COMMAND_BUFFER_ALLOCATE_INFO,
    	.pNext              = nullptr,
    	.commandPool        = this->command_pool,
    	.level              = VK_COMMAND_BUFFER_LEVEL_PRIMARY,
    	.commandBufferCount = command_buffer_count
	};

	return vkAllocateCommandBuffers( this->vk_device, &command_buffer_allocate_info, &command_buffers[0]);
}