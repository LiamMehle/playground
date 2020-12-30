#include "renderer_common.h"

int renderer::bind_image_memory() {

	return vkBindImageMemory( this->vk_device, this->vk_image, this->device_memory, 0);
}