#include "renderer_common.h"

int renderer::create_command_pool() {
	const VkCommandPoolCreateInfo command_pool_create_info = {
    	.sType            = VK_STRUCTURE_TYPE_COMMAND_POOL_CREATE_INFO,
    	.pNext            = nullptr,
    	.flags            = 0,
    	.queueFamilyIndex = queue_family_indicies[0]
	};
	return 	vkCreateCommandPool( this->vk_device, &command_pool_create_info, nullptr, &this->command_pool );
}