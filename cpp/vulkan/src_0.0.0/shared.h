#pragma once

#define log_var(var) (std::cout << #var << "=" << var << std::endl)

void error_check( VkResult result )
{
	if( result < 0 ) {
		switch( result ) {
#define CASE(flag) case flag: std::cout << std::endl << "[ERROR] " << #flag << std::endl; break;

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

//		case VK_ERROR_OUT_OF_HOST_MEMORY:
//			std::cout << "VK_ERROR_OUT_OF_HOST_MEMORY" << std::endl;
//			break;
//		case VK_ERROR_OUT_OF_DEVICE_MEMORY:
//			std::cout << "VK_ERROR_OUT_OF_DEVICE_MEMORY" << std::endl;
//			break;
//		case VK_ERROR_INITIALIZATION_FAILED:
//			std::cout << "VK_ERROR_INITIALIZATION_FAILED" << std::endl;
//			break;
//		case VK_ERROR_DEVICE_LOST:
//			std::cout << "VK_ERROR_DEVICE_LOST" << std::endl;
//			break;
//		case VK_ERROR_MEMORY_MAP_FAILED:
//			std::cout << "VK_ERROR_MEMORY_MAP_FAILED" << std::endl;
//			break;
//		case VK_ERROR_LAYER_NOT_PRESENT:
//			std::cout << "VK_ERROR_LAYER_NOT_PRESENT" << std::endl;
//			break;
//		case VK_ERROR_EXTENSION_NOT_PRESENT:
//			std::cout << "VK_ERROR_EXTENSION_NOT_PRESENT" << std::endl;
//			break;
//		case VK_ERROR_FEATURE_NOT_PRESENT:
//			std::cout << "VK_ERROR_FEATURE_NOT_PRESENT" << std::endl;
//			break;
//		case VK_ERROR_INCOMPATIBLE_DRIVER:
//			std::cout << "VK_ERROR_INCOMPATIBLE_DRIVER" << std::endl;
//			break;
//		case VK_ERROR_TOO_MANY_OBJECTS:
//			std::cout << "VK_ERROR_TOO_MANY_OBJECTS" << std::endl;
//			break;
//		case VK_ERROR_FORMAT_NOT_SUPPORTED:
//			std::cout << "VK_ERROR_FORMAT_NOT_SUPPORTED" << std::endl;
//			break;
//		case VK_ERROR_SURFACE_LOST_KHR:
//			std::cout << "VK_ERROR_SURFACE_LOST_KHR" << std::endl;
//			break;
//		case VK_ERROR_NATIVE_WINDOW_IN_USE_KHR:
//			std::cout << "VK_ERROR_NATIVE_WINDOW_IN_USE_KHR" << std::endl;
//			break;
//		case VK_SUBOPTIMAL_KHR:
//			std::cout << "VK_SUBOPTIMAL_KHR" << std::endl;
//			break;
//		case VK_ERROR_OUT_OF_DATE_KHR:
//			std::cout << "VK_ERROR_OUT_OF_DATE_KHR" << std::endl;
//			break;
//		case VK_ERROR_INCOMPATIBLE_DISPLAY_KHR:
//			std::cout << "VK_ERROR_INCOMPATIBLE_DISPLAY_KHR" << std::endl;
//			break;
//		case VK_ERROR_VALIDATION_FAILED_EXT:
//			std::cout << "VK_ERROR_VALIDATION_FAILED_EXT" << std::endl;
//			break;
		default:
			break;
		}
		assert( 0 && "Vulkan runtime error." );
	}
}