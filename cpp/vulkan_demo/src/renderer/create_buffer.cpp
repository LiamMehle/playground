#include "renderer_common.h"

int renderer::create_buffer() {
	const VkBufferCreateInfo buffer_create_info = {
	.sType                 = VK_STRUCTURE_TYPE_BUFFER_CREATE_INFO,
	.pNext                 = nullptr,
	.flags                 = 0,
	.size                  = this->get_required_buffer_size(),
	.usage                 = 
		  VK_BUFFER_USAGE_TRANSFER_SRC_BIT
		| VK_BUFFER_USAGE_TRANSFER_DST_BIT,
	.sharingMode           = VK_SHARING_MODE_EXCLUSIVE,
	.queueFamilyIndexCount =
		static_cast<uint32_t>(queue_family_indicies.size()),
	.pQueueFamilyIndices   =
		static_cast<const uint32_t*>(&queue_family_indicies[0])
	};

	return vkCreateBuffer( this->vk_device, &buffer_create_info, nullptr, &this->vk_buffer );
}