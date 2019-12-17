#include <iostream>
#include <vulkan/vulkan.h>

int main() {
	{
		
	}
	VkInstance instance;
	printf("%d", vkCreateInstance(NULL, NULL, &instance));
	return 0;
}