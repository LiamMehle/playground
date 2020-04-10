#include "renderer.h"
#include "debug_utils.h"
#include "pch.h"

VkInstance                 instance               = VK_NULL_HANDLE;
VkPhysicalDevice           gpu                    = VK_NULL_HANDLE;
VkDevice                   device                 = VK_NULL_HANDLE;
VkPhysicalDeviceProperties gpu_properties         = {};
VkQueue                    queue                  = VK_NULL_HANDLE;

char instance_layers     [32][VK_MAX_EXTENSION_NAME_SIZE];
char instance_extensions [32][VK_MAX_EXTENSION_NAME_SIZE];
char device_layers       [32][VK_MAX_EXTENSION_NAME_SIZE];
char device_extensions   [32][VK_MAX_EXTENSION_NAME_SIZE];

void renderer_init_instance(renderer* r) {
	{
		VkApplicationInfo application_info = {
				.sType              = VK_STRUCTURE_TYPE_APPLICATION_INFO,
				.pApplicationName   = "Vulkan test 01",
				.applicationVersion = VK_MAKE_VERSION(0, 0, 1),
				.apiVersion         = VK_MAKE_VERSION(1, 0, 3)
		};
		uint count;
		const char** extensions = glfwGetRequiredInstanceExtensions(&count);
		strcpy(instance_extensions[0], "VK_KHR_xcb_surface");
		for(int i = 0; i < count; i++)
			strcpy(instance_extensions[i+1], extensions[i]);
		VkInstanceCreateInfo instance_create_info = {
			.sType                 = VK_STRUCTURE_TYPE_INSTANCE_CREATE_INFO,
			.pApplicationInfo      = &application_info,
			.enabledLayerCount     = sizeof(instance_layers),
			.ppEnabledLayerNames   = (const char* const*) instance_layers,
			.enabledExtensionCount = sizeof(instance_extensions),
			.ppEnabledExtensionNames = (const char* const*) instance_extensions
		};
		error_check(vkCreateInstance(&instance_create_info, VK_NULL_HANDLE, &instance));
	}

}
void renderer_deinit_instance(renderer* r) {

}
