#define GLEW_STATIC
#include <stdio.h>
#include <stdint.h>
#include <vulkan/vulkan.h>
#include <GLFW/glfw3.h>
#include <cstdlib>
#include <assert.h>
#include <vector>

class renderer {
public:
	renderer() {
		init_instance();
	}
	~renderer() {
		deinit_instance();
	}

private:

	VkInstance                 instance               = nullptr;
	VkPhysicalDevice           gpu                    = nullptr;
	VkDevice                   device                 = nullptr;
	VkPhysicalDeviceProperties gpu_properties         = {};

	uint32_t                   graphics_family_index  = -1;

	int init_instance() {
		VkApplicationInfo application_info {
			.sType      = VK_STRUCTURE_TYPE_APPLICATION_INFO,
			.apiVersion = VK_MAKE_VERSION(1, 0, 0),
			.applicationVersion = VK_MAKE_VERSION(0, 1, 0),
			.pApplicationName = "Vulkan test 01"
		};

		VkInstanceCreateInfo instance_create_info {
			.sType           = VK_STRUCTURE_TYPE_INSTANCE_CREATE_INFO,
			.pApplicationInfo = &application_info
		};
		
		auto value = vkCreateInstance(&instance_create_info, nullptr, &instance);

		if(value != VK_SUCCESS)
			assert(1 && "Vulkan Error; Create Instance failed");
			std::exit(-1);

		uint32_t gpu_count = 0;
		vkEnumeratePhysicalDevices(instance, &gpu_count, nullptr);
		std::vector<VkPhysicalDevice> gpu_list(gpu_count);
		vkEnumeratePhysicalDevices(instance, &gpu_count, gpu_list.data());

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

		float queue_priorities[] = { 1.0f };

		VkDeviceQueueCreateInfo device_queue_create_info = {
			.sType            = VK_STRUCTURE_TYPE_DEVICE_QUEUE_CREATE_INFO,
			.queueFamilyIndex = graphics_family_index,
			.queueCount       = 1,
			.pQueuePriorities = queue_priorities
		};

		VkDeviceCreateInfo vk_device_create_info = {
			.queueCreateInfoCount = 1,
			.pQueueCreateInfos   = &device_queue_create_info,

		};

		return 0;
	}

	void deinit_instance() {
		vkDestroyInstance(instance, nullptr);
		vkDestroyDevice(device, nullptr);
		instance = nullptr;
	}
};



int main(void) {
	puts("HW");
	return 0;
}