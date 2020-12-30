#include "renderer_common.h"


int renderer::allocate_memory() {
	
	const VkMemoryAllocateInfo allocate_info = {
		.sType           = VK_STRUCTURE_TYPE_MEMORY_ALLOCATE_INFO,
		.pNext           = nullptr,
		.allocationSize  = get_required_memory_size(),
		.memoryTypeIndex = 0,
	};


	return vkAllocateMemory( this->vk_device, &allocate_info, nullptr, &this->device_memory );
}