#include "renderer_common.h"


void renderer::garbage_collect() {
	instance_extensions.shrink_to_fit();
	instance_layers.shrink_to_fit();
	queue_family_indicies.shrink_to_fit();
	vk_device_extensions.shrink_to_fit();
}
