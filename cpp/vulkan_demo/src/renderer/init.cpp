#include "renderer_common.h"

int renderer::init() noexcept {
	if(unlikely(!glfwInit())) {
		log(log_type::error_fatal, "failed to initialize glfw." );
		return -1;
	}

	// check if vulkan is supported
	if(unlikely(!glfwVulkanSupported())) {
		log(log_type::error_fatal, "no vulkan support detected (by glfw)." );
		return -2;
	}

	// initially resources need to be created strictly sequentially
	int ret;
	ret = this->create_entety();
	if(unlikely(ret)) return 1;
	ret = this->choose_device();
	if(unlikely(ret)) return 2;
	ret = this->create_device();
	if(unlikely(ret)) return 3;

// now that we have a VkDevice, resources can be generated in parallel
	{
		// generate resoures
		this->create_image();

		this->allocate_memory();
		this->create_buffer();
		
		this->bind_image_memory();
		this->create_image_view();

		this->create_command_pool();
		this->allocate_command_buffers();
		// check for errors
	}
	return 0;
}