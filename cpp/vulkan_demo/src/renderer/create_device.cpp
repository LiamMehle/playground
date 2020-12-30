#include "renderer_common.h"


void* _aligned_realloc(
	void*                   pUserData,
	void*                   pOriginal,
	size_t                  size,
	size_t                  alignment,
	VkSystemAllocationScope allocationScope) {
	
	void* new_addr = aligned_alloc( alignment, size );
	memcpy( new_addr, pOriginal, size );
	return new_addr;
}

void* _aligned_alloc(
	void*                   pUserData,
	size_t                  size,
	size_t                  alignment,
	VkSystemAllocationScope allocationScope) {
	return aligned_alloc( alignment, size );
}

void _free(
	void* pUserData,
    void* pMemory) {
	free( pMemory );
}


int renderer::create_device() {
	if( __builtin_expect( this->physical_device == 0, 0 ) ) {
		log(error_recoverable, "renderer::create_device(): device not chosen" );
		this->choose_device();
	}

	[[maybe_unused]]
	const VkPhysicalDeviceFeatures physical_device_features = {
		.robustBufferAccess                      = 0,
		.fullDrawIndexUint32                     = 0,
		.imageCubeArray                          = 0,
		.independentBlend                        = 0,
		.geometryShader                          = 0,
		.tessellationShader                      = 0,
		.sampleRateShading                       = 0,
		.dualSrcBlend                            = 0,
		.logicOp                                 = 0,
		.multiDrawIndirect                       = 0,
		.drawIndirectFirstInstance               = 0,
		.depthClamp                              = 0,
		.depthBiasClamp                          = 0,
		.fillModeNonSolid                        = 0,
		.depthBounds                             = 0,
		.wideLines                               = 0,
		.largePoints                             = 0,
		.alphaToOne                              = 0,
		.multiViewport                           = 0,
		.samplerAnisotropy                       = 0,
		.textureCompressionETC2                  = 0,
		.textureCompressionASTC_LDR              = 0,
		.textureCompressionBC                    = 0,
		.occlusionQueryPrecise                   = 0,
		.pipelineStatisticsQuery                 = 0,
		.vertexPipelineStoresAndAtomics          = 0,
		.fragmentStoresAndAtomics                = 0,
		.shaderTessellationAndGeometryPointSize  = 0,
		.shaderImageGatherExtended               = 0,
		.shaderStorageImageExtendedFormats       = 0,
		.shaderStorageImageMultisample           = 0,
		.shaderStorageImageReadWithoutFormat     = 0,
		.shaderStorageImageWriteWithoutFormat    = 0,
		.shaderUniformBufferArrayDynamicIndexing = 0,
		.shaderSampledImageArrayDynamicIndexing  = 0,
		.shaderStorageBufferArrayDynamicIndexing = 0,
		.shaderStorageImageArrayDynamicIndexing  = 0,
		.shaderClipDistance                      = 0,
		.shaderCullDistance                      = 0,
		.shaderFloat64                           = 0,
		.shaderInt64                             = 0,
		.shaderInt16                             = 0,
		.shaderResourceResidency                 = 0,
		.shaderResourceMinLod                    = 0,
		.sparseBinding                           = 0,
		.sparseResidencyBuffer                   = 0,
		.sparseResidencyImage2D                  = 0,
		.sparseResidencyImage3D                  = 0,
		.sparseResidency2Samples                 = 0,
		.sparseResidency4Samples                 = 0,
		.sparseResidency8Samples                 = 0,
		.sparseResidency16Samples                = 0,
		.sparseResidencyAliased                  = 0,
		.variableMultisampleRate                 = 0,
		.inheritedQueries                        = 0
	};


	{ // no need to keep the vector after finding the correct family type
		uint32_t queue_count;
		vkGetPhysicalDeviceQueueFamilyProperties( this->physical_device,
			&queue_count, nullptr);
		std::vector<VkQueueFamilyProperties> queue_family_properties;
		queue_family_properties.reserve(queue_count);
		vkGetPhysicalDeviceQueueFamilyProperties( this->physical_device,
			&queue_count, &queue_family_properties[0]);
		
		for( int i = 0; i < static_cast<int>(queue_count); ++i ) {
			if( queue_family_properties[i].queueFlags & VK_QUEUE_GRAPHICS_BIT &&
				queue_family_properties[i].queueFlags & VK_QUEUE_TRANSFER_BIT ){
				queue_family_indicies.push_back(i);
				std::cout << "selected queue family " << i << std::endl;
				break;
			}
		}
	}

	// make sure that a queue family was found
	if( __builtin_expect(queue_family_indicies.back() < 0, 0)) {
		log( log_type::error_fatal, "no queue found" );
		return -1;
	}

	const float queue_priorities[] = { 1.0f };
	const VkDeviceQueueCreateInfo device_queue_create_info = {
		.sType            = VK_STRUCTURE_TYPE_DEVICE_QUEUE_CREATE_INFO,
		.pNext            = nullptr,
		.flags            = 0,
		.queueFamilyIndex = 0,
		.queueCount       = 1,
		.pQueuePriorities = queue_priorities
	};

	const VkDeviceCreateInfo device_create_info = {
		.sType                   = VK_STRUCTURE_TYPE_DEVICE_CREATE_INFO,
		.pNext                   = nullptr,
		.flags                   = 0,
		.queueCreateInfoCount    = 1,
		.pQueueCreateInfos       = &device_queue_create_info,
		.enabledLayerCount       = 0,
		.ppEnabledLayerNames     = nullptr,
		.enabledExtensionCount   = 
			static_cast<uint32_t>( vk_device_extensions.size() ),
		.ppEnabledExtensionNames = 
			static_cast<const char* const*>( &vk_device_extensions[0] ),
		.pEnabledFeatures        = &physical_device_features
	};

	[[maybe_unused]]
	const VkAllocationCallbacks allocation_callbacks = {
    	.pUserData             = nullptr,
    	.pfnAllocation         = _aligned_alloc,
    	.pfnReallocation       = _aligned_realloc,
    	.pfnFree               = _free,
    	.pfnInternalAllocation = nullptr,
    	.pfnInternalFree       = nullptr
	};

	return vkCreateDevice( this->physical_device, &device_create_info,
		nullptr , &this->vk_device );
}

