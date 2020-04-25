#include "pch.h"
#include "debug_utils.h"

void error_check(const VkResult result)
{
	if( result < 0 ) {
		switch( result ) {
#define CASE(flag) case flag: printf("[ERROR] %s: %d\n", #flag, flag); break;
		CASE(VK_SUCCESS)
		CASE(VK_NOT_READY)
		CASE(VK_TIMEOUT)
		CASE(VK_EVENT_SET)
		CASE(VK_EVENT_RESET)
		CASE(VK_INCOMPLETE)
		CASE(VK_ERROR_OUT_OF_HOST_MEMORY)
		CASE(VK_ERROR_OUT_OF_DEVICE_MEMORY)
		CASE(VK_ERROR_INITIALIZATION_FAILED)
		CASE(VK_ERROR_DEVICE_LOST)
		CASE(VK_ERROR_MEMORY_MAP_FAILED)
		CASE(VK_ERROR_LAYER_NOT_PRESENT)
		CASE(VK_ERROR_EXTENSION_NOT_PRESENT)
		CASE(VK_ERROR_FEATURE_NOT_PRESENT)
		CASE(VK_ERROR_INCOMPATIBLE_DRIVER)
		CASE(VK_ERROR_TOO_MANY_OBJECTS)
		CASE(VK_ERROR_FORMAT_NOT_SUPPORTED)
		CASE(VK_ERROR_FRAGMENTED_POOL)
#undef CASE
		default:
			break;
		}
		assert( 0 && "Vulkan runtime error." );
	}
}

void __glfw_error_callback(const int error, const char* restrict const description) {
	fprintf(stderr, "[Error] <GLFW> %s\n", description);
}
