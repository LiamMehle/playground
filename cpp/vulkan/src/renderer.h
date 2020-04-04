#include <stdio.h>
#include <iostream>
#include <stdint.h>
#include <vulkan/vulkan.h>

#include <cstdlib>
#include <assert.h>
#include <vector>

#include "shared.h"

/*

todo: use malloc instead of vector

*/



class renderer {
public:
	renderer() {
		setupDebug();
		init_instance();
	}
	~renderer() {
		deinit_instance();
	}


//private:

	VkInstance                 instance               = VK_NULL_HANDLE;
	VkPhysicalDevice           gpu                    = VK_NULL_HANDLE;
	VkDevice                   device                 = VK_NULL_HANDLE;
	VkPhysicalDeviceProperties gpu_properties         = {};
	VkQueue                    queue                  = VK_NULL_HANDLE;

	uint32_t                   graphics_family_index  = -1;

	std::vector<const char*>   instance_layers    ;
	std::vector<const char*>   instance_extensions;
	std::vector<const char*>   device_layers      ;
	std::vector<const char*>   device_extensions  ;

	int init_instance() {
		VkApplicationInfo application_info = {
			.sType              = VK_STRUCTURE_TYPE_APPLICATION_INFO,
			.pApplicationName   = "Vulkan test 01",
			.applicationVersion = VK_MAKE_VERSION(0, 1, 0),
			.apiVersion         = VK_MAKE_VERSION(1, 0, 3)
		};

		VkInstanceCreateInfo instance_create_info {
			.sType                 = VK_STRUCTURE_TYPE_INSTANCE_CREATE_INFO,
			.pApplicationInfo      = &application_info,
			.enabledLayerCount     = instance_layers.size(),
			.ppEnabledLayerNames   = instance_layers.data(),
			.enabledExtensionCount = instance_extensions.size(),
			//.enabledExtensionNames = instance_extensions.size()
		};
		
		error_check(vkCreateInstance(&instance_create_info, nullptr, &instance));

		uint32_t gpu_count = 0;
		error_check(vkEnumeratePhysicalDevices(instance, &gpu_count, nullptr));
		std::vector<VkPhysicalDevice> gpu_list(gpu_count);
		error_check(vkEnumeratePhysicalDevices(instance, &gpu_count, gpu_list.data()));

#ifdef VERBOSE
		log_var(gpu_count);

		{
			VkPhysicalDeviceProperties p;
			for(uint i = 0; i < gpu_count; i++) {
				vkGetPhysicalDeviceProperties(gpu_list[i], &p);
				putc('\n', stdout);
				log_var(i);
				log_var(p.apiVersion);
				log_var(p.driverVersion);
				log_var(p.vendorID);
				log_var(p.deviceID);
				log_var(p.deviceName);
				log_var(p.pipelineCacheUUID);
			}
		}
#endif

		gpu = gpu_list[0];
		uint32_t family_count = 0;
		vkGetPhysicalDeviceQueueFamilyProperties(gpu, &family_count, nullptr);
		std::vector<VkQueueFamilyProperties> family_properties_list(family_count);
		vkGetPhysicalDeviceQueueFamilyProperties(gpu, &family_count, family_properties_list.data());
		bool found = false;
		for(uint32_t i = 0; i < family_count; i++) {
			if(family_properties_list[i].queueFlags & VK_QUEUE_GRAPHICS_BIT) {
				found = true;
				graphics_family_index = i;
			}
		}
		if(!found)
			std::exit(-1);
#ifdef VERBOSE
		log_var(family_count);
#endif
		float queue_priorities[] = { 1.0f };

		VkDeviceQueueCreateInfo device_queue_create_info = {
			.sType            = VK_STRUCTURE_TYPE_DEVICE_QUEUE_CREATE_INFO,
			.queueFamilyIndex = graphics_family_index,
			.queueCount       = 1,
			.pQueuePriorities = queue_priorities
		};

		VkDeviceCreateInfo device_create_info = {
			.queueCreateInfoCount  = 1,
			.pQueueCreateInfos     = &device_queue_create_info,
			.enabledLayerCount     = device_layers.size(),
			.ppEnabledLayerNames   = device_layers.data(),
			.enabledExtensionCount = device_extensions.size(),
			//.enabledExtensionNames = device_extensions.size()

		};

		uint32_t layer_count;
		vkEnumerateInstanceLayerProperties(&layer_count, nullptr);
		std::vector<VkLayerProperties> layer_property_list;
		vkEnumerateInstanceLayerProperties(&layer_count, layer_property_list.data());
#ifdef VERBOSE
		std::cout << "found " << layer_count << " layers" << std::endl;
		std::cout << "Instance Layers:" << std::endl;
		for(auto &layer : layer_property_list) {
			std::cout << layer.layerName << "\t\t" << layer.description << std::endl;
		}
#endif

		vkCreateDevice( gpu, &device_create_info, nullptr, &device);

		vkGetDeviceQueue(device, graphics_family_index, 0, &queue);
		assert(queue != VK_NULL_HANDLE);

		return 0;
	}

	void deinit_instance() {
		vkDestroyDevice(device, nullptr);
		device = VK_NULL_HANDLE;
		vkDestroyInstance(instance, nullptr);
		instance = VK_NULL_HANDLE;
	}

	void setupDebug() {

	}
	void initDebug() {

	}
	void deInitDebug() {
		
	}
};
