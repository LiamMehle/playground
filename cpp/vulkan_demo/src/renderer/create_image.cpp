#include "renderer_common.h"


int renderer::create_image() {
	
	const VkImageCreateInfo image_create_info = {
		.sType                 = VK_STRUCTURE_TYPE_IMAGE_CREATE_INFO,
		.pNext                 = nullptr,
		.flags                 = 0,
		.imageType             = VK_IMAGE_TYPE_2D,
		.format                = VK_FORMAT_R32G32B32A32_SFLOAT,
		.extent                = { display_width, display_height, 1 },
		.mipLevels             = 1,
		.arrayLayers           = 1,
		.samples               = VK_SAMPLE_COUNT_1_BIT,
		.tiling                = VK_IMAGE_TILING_OPTIMAL,
		.usage                 = VK_IMAGE_USAGE_TRANSFER_SRC_BIT
		| VK_IMAGE_USAGE_TRANSFER_DST_BIT
		| VK_IMAGE_USAGE_SAMPLED_BIT
		| VK_IMAGE_USAGE_STORAGE_BIT,
		.sharingMode           = VK_SHARING_MODE_EXCLUSIVE,
		.queueFamilyIndexCount = 1,
		.pQueueFamilyIndices   = &queue_family_indicies[0],
		.initialLayout         = VK_IMAGE_LAYOUT_UNDEFINED
	};

	return vkCreateImage( this->vk_device, &image_create_info, nullptr, &this->vk_image );
}