#include "renderer.h"
#include "debug_utils.h"
#include "pch.h"

#define VERBOSE


void renderer_init_instance(renderer* r) {
	r->instance               = VK_NULL_HANDLE;
	r->gpu                    = VK_NULL_HANDLE;
	r->device                 = VK_NULL_HANDLE;
//	r->gpu_properties         = {};
	r->queue                  = VK_NULL_HANDLE;

	r->instance_exstension_count = 0;
	r->instance_layer_count      = 0;

	{
		VkApplicationInfo application_info = {
				.sType              = VK_STRUCTURE_TYPE_APPLICATION_INFO,
				.pApplicationName   = "Vulkan test 01",
				.applicationVersion = VK_MAKE_VERSION(0, 0, 1),
				.apiVersion         = VK_MAKE_VERSION(1, 0, 3)
		};
		uint count;
		const char** extensions = glfwGetRequiredInstanceExtensions(&count);

		strcpy(r->instance_extensions[0], "VK_KHR_xcb_surface");
		for(int i = 0; i < count; i++)
			strcpy(r->instance_extensions[i+1], extensions[i]);
		r->instance_exstension_count += 1 + count;

		VkInstanceCreateInfo instance_create_info = {
			.sType                   = VK_STRUCTURE_TYPE_INSTANCE_CREATE_INFO,
			.pApplicationInfo        = &application_info,
			//.enabledLayerCount       = r->instance_layer_count,
			//.ppEnabledLayerNames     = (const char* const*) r->instance_layers,
			//.enabledExtensionCount   = r->instance_exstension_count,
			//.ppEnabledExtensionNames = (const char* const*) r->instance_extensions
		};
		error_check(vkCreateInstance(&instance_create_info, VK_NULL_HANDLE, &r->instance));
	}

	r->gpu_count = 0;
	error_check(vkEnumeratePhysicalDevices(r->instance, &r->gpu_count, VK_NULL_HANDLE));
	r->gpu_list = malloc(r->gpu_count*sizeof(VkPhysicalDevice));
	error_check(vkEnumeratePhysicalDevices(r->instance, &r->gpu_count, r->gpu_list));

#ifdef VERBOSE
	log_int(r->gpu_count);
	{
		VkPhysicalDeviceProperties p;
		for(int i = 0; i < r->gpu_count; i++) {
			vkGetPhysicalDeviceProperties(r->gpu_list[i], &p);
			putc('\n', stdout);
			log_int(i);
			log_int((int)p.apiVersion);
			log_int((int)p.driverVersion);
			log_int((int)p.vendorID);
			log_int((int)p.deviceID);
			log_str(p.deviceName);
			log_int((int)*p.pipelineCacheUUID);
		}
	}
#endif

}
void renderer_deinit_instance(renderer* r) {
	vkDestroyInstance(r->instance, VK_NULL_HANDLE);
	free(r->gpu_list);
}
