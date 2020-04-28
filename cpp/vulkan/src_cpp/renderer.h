#ifndef renderer_h
#define renderer_h

#include "pch.h"


typedef struct {
	VkInstance                 instance;
	VkPhysicalDevice           gpu;
	VkDevice                   device;
	VkPhysicalDeviceProperties gpu_properties;
	VkQueue                    queue;
	VkImage                    image;
	VkImageView                image_view;

	char instance_layers     [32][VK_MAX_EXTENSION_NAME_SIZE];
	char instance_extensions [32][VK_MAX_EXTENSION_NAME_SIZE];
	char device_layers       [32][VK_MAX_EXTENSION_NAME_SIZE];
	char device_extensions   [32][VK_MAX_EXTENSION_NAME_SIZE];

	uint32_t graphics_family_index;
	int      instance_exstension_count;
	int      instance_layer_count;
	int      device_layer_count;
	int      device_extension_count;


	// assuming you're not running this on a system with more than 32 gpus
	// you don't plan on using
	#define gpu_blacklist_size 32
	int gpu_blacklist[gpu_blacklist_size];

	uint32_t          gpu_count;

	struct window_size_t {
		int x;
		int y;
	} window_size;

} renderer;

void renderer_init_instance    (renderer* const r);
void renderer_deinit_instance  (renderer* const r);
void renderer_create_image     (renderer* const r);
void debug_print_image_formats (const renderer* const r);

#endif
