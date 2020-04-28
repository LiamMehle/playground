#include "renderer.h"
#include "debug_utils.h"
#include "pch.h"

//#define VERBOSE

/*
	vectors do not exist in c so malloc will have to do

	calling an enumerate function, malloc, calling funciton again is
	the procedure for getting the ammount of memory to allocate,
	making a list, then populating the list

	procedure used often with vulkan enumeration functions
*/

void renderer_init_instance(renderer* r) {
	r->instance               = VK_NULL_HANDLE;
	r->gpu                    = VK_NULL_HANDLE;
	r->device                 = VK_NULL_HANDLE;
//	r->gpu_properties         = (VkPhysicalDeviceProperties) {}; // empty initializers are forbidden -Wpedantic
	r->queue                  = VK_NULL_HANDLE;

	r->instance_layer_count      = 0;
	r->instance_exstension_count = 0;

	{ // set up the VkInstance
		const VkApplicationInfo application_info = {
				.sType              = VK_STRUCTURE_TYPE_APPLICATION_INFO,
				.pApplicationName   = "Vulkan test 01",
				.applicationVersion = VK_MAKE_VERSION(0, 0, 1),
				.apiVersion         = VK_MAKE_VERSION(1, 0, 3)
		};

		// get required instance extensions to use with glfw
		uint count;
		const char** extensions = glfwGetRequiredInstanceExtensions(&count);
		for(int i = 0; i < count; i++)
			puts(extensions[i]);

		// load in all of the required extensions
		
		strcpy(r->instance_extensions[0], "VK_KHR_xcb_surface");
		//r->instance_extensions[0] = "VK_KHR_xcb_surface";
		r->instance_exstension_count++;

		for(int i = 0; i < count; i++)
			strcpy(r->instance_extensions[i+1], extensions[i]);
		r->instance_exstension_count += count;
		
		const VkInstanceCreateInfo instance_create_info = {
			.sType                   = VK_STRUCTURE_TYPE_INSTANCE_CREATE_INFO,
			.pApplicationInfo        = &application_info,
			.enabledLayerCount       = r->instance_layer_count,
			.ppEnabledLayerNames     = (const char* const*) r->instance_layers,
			.enabledExtensionCount   = r->instance_exstension_count,
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
		int found_gpu = 0;
		VkExtensionProperties* property_list;
		for(int i = 0; i < gpu_count; i++) {
			// check if gpu is blacklisted
			int gpu_blacklisted = 0;
			for(int j = 0; j < gpu_blacklist_size; j++)
				if(i == r->gpu_blacklist[j])
					gpu_blacklisted = 1;
			if(gpu_blacklisted)
				continue;

			uint property_count;
			error_check(vkEnumerateDeviceExtensionProperties(gpu_list[i], NULL, &property_count, NULL));
			property_list = malloc(property_count*sizeof(VkExtensionProperties));
			error_check(vkEnumerateDeviceExtensionProperties(gpu_list[i], NULL, &property_count, property_list));
			for(int j = 0; j < property_count; j++) {
				if(!strcmp(property_list[j].extensionName, "VK_KHR_swapchain")) {
					r->gpu = gpu_list[i];
#ifdef VERBOSE
					printf("using gpu %d\n", i);
#endif
					found_gpu = 1;
					break;
				}
				if(found_gpu)
					break;
			}
			free(property_list);
			if(found_gpu)
				break;
		}
		if(!found_gpu) {
#ifdef VERBOSE
			puts("couldn't find suitable gpu, using the first");
#endif
			r->gpu = gpu_list[0];
		}
		// ------------------ found gpu
#ifdef VERBOSE
		if(found_gpu)
			puts("found gpu");
#endif
		free(gpu_list);

		r->graphics_family_index = -1;
		uint32_t family_count = 0;
		vkGetPhysicalDeviceQueueFamilyProperties(r->gpu, &family_count, NULL);
		VkQueueFamilyProperties* family_property_list = malloc(family_count*sizeof(VkQueueFamilyProperties));
		vkGetPhysicalDeviceQueueFamilyProperties(r->gpu, &family_count, family_property_list);
		char found = 0;
		for(uint32_t i = 0; i < family_count; i++) {
			//if(glfwGetPhysicalDevicePresentationSupport(r->instance, r->gpu, r->graphics_family_index)) {
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
		{
			float queue_priorities[] = { 1.0f };

			const VkDeviceQueueCreateInfo device_queue_create_info = {
				.sType            = VK_STRUCTURE_TYPE_DEVICE_QUEUE_CREATE_INFO,
				.queueFamilyIndex = r->graphics_family_index,
				.queueCount       = 1,
				.pQueuePriorities = queue_priorities
			};

			const VkDeviceCreateInfo device_create_info = {
				.queueCreateInfoCount    = 1,
				.pQueueCreateInfos       = &device_queue_create_info,
				// .enabledLayerCount       = r->device_layer_count,
				// .ppEnabledLayerNames     = (const char * const*) r->device_layers,
				// .enabledExtensionCount   = r->device_extension_count,
				// .ppEnabledExtensionNames = (const char * const*) r->device_extensions
			};

			vkCreateDevice(r->gpu, &device_create_info, NULL, &r->device);
			vkGetDeviceQueue(r->device, r->graphics_family_index, 0, &r->queue);
			assert(r->queue != VK_NULL_HANDLE);
		}
	}

}

void renderer_deinit_instance(renderer* r) {
	vkDestroyDevice(r->device, VK_NULL_HANDLE);
	vkDestroyInstance(r->instance, VK_NULL_HANDLE);
}


// segfault in vkCreateImage(), not sure why
void renderer_create_image(renderer* r) {
	{
		const VkImageCreateInfo image_create_info = {
			.sType                 = VK_STRUCTURE_TYPE_APPLICATION_INFO,
			.pNext                 = NULL,
			.flags                 = VK_IMAGE_CREATE_MUTABLE_FORMAT_BIT,
			.imageType             = VK_IMAGE_TYPE_2D,
			.format                = VK_FORMAT_B8G8R8_UINT,
			.extent = {
				.width                 = r->window_size.x,
				.height                = r->window_size.y,
				.depth                 = 3
			},
			.mipLevels             = 1,
			.arrayLayers           = 1,
			.samples               = VK_SAMPLE_COUNT_1_BIT,
			.tiling                = VK_IMAGE_TILING_OPTIMAL,
			.usage                 = VK_IMAGE_USAGE_DEPTH_STENCIL_ATTACHMENT_BIT,
			.sharingMode           = VK_SHARING_MODE_CONCURRENT,
			.queueFamilyIndexCount = 1,
			.pQueueFamilyIndices   = &r->graphics_family_index,
			.initialLayout         = VK_IMAGE_LAYOUT_UNDEFINED
		};
		error_check(vkCreateImage(r->device, &image_create_info, NULL, &r->image));
	}
/*	{
		const VkImageViewCreateInfo* pCreateInfo = {

		};
		VkResult vkCreateImageView(r->device,
    const VkImageViewCreateInfo*                pCreateInfo,
    const VkAllocationCallbacks*                pAllocator,
    VkImageView*                                pView);
	}*/
}

// must not be executing
void renderer_destroy_image(renderer* r) {
	vkDestroyImageView(r->device, r->image_view, NULL);
	vkDestroyImage(r->device, r->image, NULL);
}

void debug_print_image_formats(renderer* r) {
	{
		VkFormatProperties format_properties;
		vkGetPhysicalDeviceFormatProperties(r->gpu, VK_FORMAT_B8G8R8_UINT, &format_properties);
		//check for and log if val is present in var flag-set
#define log_bit(var, val) if(var & val) puts(#val)

		puts("supported linear tiling features");

		int flags = format_properties.linearTilingFeatures;
		log_bit(flags, VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT);
		log_bit(flags, VK_FORMAT_FEATURE_STORAGE_IMAGE_BIT);
		log_bit(flags, VK_FORMAT_FEATURE_STORAGE_IMAGE_ATOMIC_BIT);
		log_bit(flags, VK_FORMAT_FEATURE_UNIFORM_TEXEL_BUFFER_BIT);
		log_bit(flags, VK_FORMAT_FEATURE_STORAGE_TEXEL_BUFFER_BIT);
		log_bit(flags, VK_FORMAT_FEATURE_STORAGE_TEXEL_BUFFER_ATOMIC_BIT);
		log_bit(flags, VK_FORMAT_FEATURE_VERTEX_BUFFER_BIT);
		log_bit(flags, VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT);
		log_bit(flags, VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BLEND_BIT);
		log_bit(flags, VK_FORMAT_FEATURE_DEPTH_STENCIL_ATTACHMENT_BIT);
		log_bit(flags, VK_FORMAT_FEATURE_BLIT_SRC_BIT);
		log_bit(flags, VK_FORMAT_FEATURE_BLIT_DST_BIT);
		log_bit(flags, VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_LINEAR_BIT);

		puts("\nsupported optimal tiling features");

		flags = format_properties.optimalTilingFeatures;
		log_bit(flags, VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT);
		log_bit(flags, VK_FORMAT_FEATURE_STORAGE_IMAGE_BIT);
		log_bit(flags, VK_FORMAT_FEATURE_STORAGE_IMAGE_ATOMIC_BIT);
		log_bit(flags, VK_FORMAT_FEATURE_UNIFORM_TEXEL_BUFFER_BIT);
		log_bit(flags, VK_FORMAT_FEATURE_STORAGE_TEXEL_BUFFER_BIT);
		log_bit(flags, VK_FORMAT_FEATURE_STORAGE_TEXEL_BUFFER_ATOMIC_BIT);
		log_bit(flags, VK_FORMAT_FEATURE_VERTEX_BUFFER_BIT);
		log_bit(flags, VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT);
		log_bit(flags, VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BLEND_BIT);
		log_bit(flags, VK_FORMAT_FEATURE_DEPTH_STENCIL_ATTACHMENT_BIT);
		log_bit(flags, VK_FORMAT_FEATURE_BLIT_SRC_BIT);
		log_bit(flags, VK_FORMAT_FEATURE_BLIT_DST_BIT);
		log_bit(flags, VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_LINEAR_BIT);

		puts("\nsupported buffer features");

		flags = format_properties.bufferFeatures;
		log_bit(flags, VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT);
		log_bit(flags, VK_FORMAT_FEATURE_STORAGE_IMAGE_BIT);
		log_bit(flags, VK_FORMAT_FEATURE_STORAGE_IMAGE_ATOMIC_BIT);
		log_bit(flags, VK_FORMAT_FEATURE_UNIFORM_TEXEL_BUFFER_BIT);
		log_bit(flags, VK_FORMAT_FEATURE_STORAGE_TEXEL_BUFFER_BIT);
		log_bit(flags, VK_FORMAT_FEATURE_STORAGE_TEXEL_BUFFER_ATOMIC_BIT);
		log_bit(flags, VK_FORMAT_FEATURE_VERTEX_BUFFER_BIT);
		log_bit(flags, VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT);
		log_bit(flags, VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BLEND_BIT);
		log_bit(flags, VK_FORMAT_FEATURE_DEPTH_STENCIL_ATTACHMENT_BIT);
		log_bit(flags, VK_FORMAT_FEATURE_BLIT_SRC_BIT);
		log_bit(flags, VK_FORMAT_FEATURE_BLIT_DST_BIT);
		log_bit(flags, VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_LINEAR_BIT);

		puts("\n");
#undef log_bit
	}
}
