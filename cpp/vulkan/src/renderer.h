#include "pch.h"

typedef struct {
	VkInstance                 instance;
	VkPhysicalDevice           gpu;
	VkDevice                   device;
	VkPhysicalDeviceProperties gpu_properties;
	VkQueue                    queue;
	
	char instance_layers     [32][VK_MAX_EXTENSION_NAME_SIZE];
	char instance_extensions [32][VK_MAX_EXTENSION_NAME_SIZE];
	char device_layers       [32][VK_MAX_EXTENSION_NAME_SIZE];
	char device_extensions   [32][VK_MAX_EXTENSION_NAME_SIZE];
	
	int instance_exstension_count;
	int instance_layer_count;
	
	VkPhysicalDevice* gpu_list;
	uint32_t          gpu_count;
} renderer;
void renderer_init_instance(renderer*);
void renderer_deinit_instance(renderer*);
void renderer_get_physical_device(renderer*, VkPhysicalDevice*);
void renderer_get_device(renderer*, VkDevice*);
void renderer_get_instance(renderer*, VkInstance*);
void renderer_get_queue(renderer*, VkQueue*);
