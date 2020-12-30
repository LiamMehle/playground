#include "renderer_common.h"


int renderer::choose_device() {
	// check if instance was not yet created
	if( __builtin_expect( this->instance == 0, 0 ) ) {
		log(error_recoverable, "renderer::choose_device(): instance not created" );
		this->create_entety();
	}

	// query devices offered to the host
	uint32_t device_count;
	int result = vkEnumeratePhysicalDevices( this->instance, &device_count,
		nullptr );
	assert( result == VK_SUCCESS );
	std::vector<VkPhysicalDevice> device_list( device_count );
	result     = vkEnumeratePhysicalDevices( this->instance, &device_count,
		&device_list[0] );
	assert( result == VK_SUCCESS );


	// for demo purposes..
	uint64_t selected_device_index = 0;

	std::cout << "devices found:" << std::endl;
	VkPhysicalDeviceProperties device_properties;
	for( uint64_t i = 0; i < device_list.size(); ++i ) {
		vkGetPhysicalDeviceProperties( device_list[i], &device_properties );
		// check requirements
		if( i == selected_device_index )
			std::cout << '>';
		std::cout << '\t' << device_properties.deviceName << std::endl;
	}
	if( __builtin_expect( this->instance == 0, 0 ) )
		return -ENODEVICE;

	this->physical_device = device_list[selected_device_index];

	return 0;
}
