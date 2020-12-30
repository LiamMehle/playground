#include "renderer_common.h"


void renderer::get_required_instance_extensions() {
	uint32_t extension_count;
	const char** extensions = glfwGetRequiredInstanceExtensions( &extension_count );

	instance_extensions.reserve( extension_count );

	std::cout << "installing extensions:" << std::endl;
	for( uint32_t i = 0; i < extension_count; ++i ) {
		instance_extensions.push_back( const_cast<char*>(extensions[i]) );
		std::cout << '\t' << extensions[i] << std::endl;
	}
	std::cout << std::endl;
}

int renderer::create_entety() {


	const VkApplicationInfo application_info = {
		.sType              = VK_STRUCTURE_TYPE_APPLICATION_INFO,
		.pNext              = nullptr,
		.pApplicationName   = "Vulkan demo",
		.applicationVersion = 0,
		.pEngineName        = "Demo engine",
		.engineVersion      = 0,
		.apiVersion         = 0
	};

	get_required_instance_extensions();

	{
		[[maybe_unused]]
		char standard_validation[] = "VK_LAYER_KHRONOS_validation";
		instance_layers.push_back( standard_validation );
	}
	const VkInstanceCreateInfo instance_create_info = {
		.sType                   = VK_STRUCTURE_TYPE_INSTANCE_CREATE_INFO,
		.pNext                   = nullptr,
		.flags                   = 0,
		.pApplicationInfo        = &application_info,
		.enabledLayerCount       =
			static_cast<uint32_t>( instance_layers.size() ),
		.ppEnabledLayerNames     =
			static_cast<const char* const*>( &instance_layers[0] ),
		.enabledExtensionCount   =
			static_cast<uint32_t>( instance_extensions.size() ),
		.ppEnabledExtensionNames = 
			static_cast<const char* const*>( &instance_extensions[0] )
	};

	return vkCreateInstance( &instance_create_info, nullptr, &this->instance );	
}
