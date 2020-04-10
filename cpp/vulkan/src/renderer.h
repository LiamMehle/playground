#pragma once
#include "pch.h"

typedef struct {

} renderer;
void renderer_init_instance(renderer*);
void renderer_deinit_instance(renderer*);
void renderer_get_physical_device(renderer*, VkPhysicalDevice*);
void renderer_get_device(renderer*, VkDevice*);
void renderer_get_instance(renderer*, VkInstance*);
void renderer_get_queue(renderer*, VkQueue*);
