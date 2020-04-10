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
			.enabledLayerCount       = r->instance_layer_count,
			.ppEnabledLayerNames     = (const char* const*) r->instance_layers,
			.enabledExtensionCount   = 0, // r->instance_exstension_count,
			.ppEnabledExtensionNames = (const char* const*) r->instance_extensions
		};
		error_check(vkCreateInstance(&instance_create_info, VK_NULL_HANDLE, &r->instance));
	}

	uint32_t gpu_count = 0;
	error_check(vkEnumeratePhysicalDevices(r->instance, &gpu_count, VK_NULL_HANDLE));
	VkPhysicalDevice* gpu_list = malloc(gpu_count*sizeof(VkPhysicalDevice));
	error_check(vkEnumeratePhysicalDevices(r->instance, &gpu_count, gpu_list));

#ifdef VERBOSE
	log_int(gpu_count);
	{
		VkPhysicalDeviceProperties p;
		for(int i = 0; i < gpu_count; i++) {
			vkGetPhysicalDeviceProperties(gpu_list[i], &p);
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
	{
		VkExtensionProperties* property_list;
		for(int i = 0; i < gpu_count; i++) {
			uint property_count;
			error_check(vkEnumerateDeviceExtensionProperties(gpu_list[i], NULL, &property_count, NULL));
			property_list = malloc(property_count*sizeof(VkExtensionProperties));
			error_check(vkEnumerateDeviceExtensionProperties(gpu_list[i], NULL, &property_count, property_list));
			for(int j = 0; j < property_count; j++) {
				if(!strcmp(property_list[j].extensionName, "VK_KHR_swapchain")) {
					r->gpu = gpu_list[i];
					printf("using gpu %d\n", i);
					goto found_gpu;
				}
			}	
		}
		puts("couldn't find suitable gpu, using the first");
		r->gpu = gpu_list[0];
		found_gpu:
		puts("found gpu");
		free(gpu_list);
		free(property_list);
	}

	{

		r->graphics_family_index = -1;
		uint32_t family_count = 0;
		vkGetPhysicalDeviceQueueFamilyProperties(r->gpu, &family_count, VK_NULL_HANDLE);
		VkQueueFamilyProperties* family_property_list = malloc(family_count*sizeof(VkQueueFamilyProperties));
		vkGetPhysicalDeviceQueueFamilyProperties(r->gpu, &family_count, family_property_list);
		char found = 0;
		for(uint32_t i = 0; i < family_count; i++) {
			if(family_property_list[i].queueFlags & VK_QUEUE_GRAPHICS_BIT) {
				found = 1;
				r->graphics_family_index = i;
			}
		}
		assert(found);
		free(family_property_list);

#ifdef VERBOSE
		log_int(family_count);
#endif
		float queue_priorities[] = { 1.0f };

		VkDeviceQueueCreateInfo device_queue_create_info = {
			.sType            = VK_STRUCTURE_TYPE_DEVICE_QUEUE_CREATE_INFO,
			.queueFamilyIndex = r->graphics_family_index,
			.queueCount       = 1,
			.pQueuePriorities = queue_priorities
		};

		VkDeviceCreateInfo device_create_info = {
			.queueCreateInfoCount    = 1,
			.pQueueCreateInfos       = &device_queue_create_info,
			.enabledLayerCount       = r->device_layer_count,
			.ppEnabledLayerNames     = (const char * const*) r->device_layers,
			.enabledExtensionCount   = r->device_extension_count,
			.ppEnabledExtensionNames = (const char * const*) r->device_extensions
		};

		vkCreateDevice(r->gpu, &device_create_info, NULL, &r->device);
		vkGetDeviceQueue(r->device, r->graphics_family_index, 0, &r->queue);
		assert(r->queue != VK_NULL_HANDLE);

	}

}

void renderer_deinit_instance(renderer* r) {
	vkDestroyInstance(r->instance, VK_NULL_HANDLE);
}
