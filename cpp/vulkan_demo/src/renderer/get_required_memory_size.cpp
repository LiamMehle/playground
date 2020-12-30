#include "renderer_common.h"

size_t renderer::get_required_memory_size() {

	VkMemoryRequirements memory_requirements = {0};
	vkGetImageMemoryRequirements( this->vk_device, this->vk_image, &memory_requirements );


	return this->get_required_buffer_size() + memory_requirements.size;
}