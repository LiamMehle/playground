#include "renderer_common.h"


int renderer::create_image_view() {
	const VkImageViewCreateInfo image_view_create_info = {
		.sType            = VK_STRUCTURE_TYPE_IMAGE_VIEW_CREATE_INFO,
		.pNext            = NULL,
		.flags            = 0,
		.image            = this->vk_image,
		.viewType         = VK_IMAGE_VIEW_TYPE_2D,
		.format           = VK_FORMAT_R32G32B32A32_SFLOAT,
		.components       = { 
			VK_COMPONENT_SWIZZLE_R,
			VK_COMPONENT_SWIZZLE_G,
			VK_COMPONENT_SWIZZLE_B,
			VK_COMPONENT_SWIZZLE_A
		},
		.subresourceRange = {
			.aspectMask     = VK_IMAGE_ASPECT_COLOR_BIT,
			.baseMipLevel   = 0,
			.levelCount     = 1,
			.baseArrayLayer = 0,
			.layerCount     = 1
		}
	};

	return vkCreateImageView( this->vk_device, &image_view_create_info, nullptr, &this->image_view );
}