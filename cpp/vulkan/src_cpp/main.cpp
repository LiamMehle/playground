#include "pch.h"
#include "renderer.h"
#include "debug_utils.h"
#include "thread_pool.h"


// print using thread pool
#define async_print(str) task.f = print;   \
                        task.args = str;   \
		            offload_work(&tp, &task)


thread_pool_t tp;
renderer* r;

// This function can afford to be slightly more expensive as it is designed
// to be run in a thread pool. The top priority is to stall the calling thread
// as little as possible (at the expense ofthe thread pool).
void print(void* args_raw) {
	// make a local copy in case the pointed data changes
	char* local_string = (char*) malloc(strlen((const char*)args_raw));
	strcpy(local_string, (const char*)args_raw);
	// print the string
	puts(local_string);
	// prevent memory leaks
	free(local_string);
}

int main(void) {


	/*
	task_t task; // used for async_print macro and one-off task dispatch
	{
		thread_pool_create_info tp_info = {
			.thread_count = 16,
			.task_count   = 128
		};
		thread_pool_make(&tp, &tp_info);
	}
	// example of print using thread pool
	// async_print("hi");
	*/

	r = (renderer*) malloc(sizeof(renderer));

	renderer_init_instance(r);


	// set error callback
	glfwSetErrorCallback(__glfw_error_callback);
	// init glfw. on error, the error callback will be triggered
	if(!glfwInit())
		return -99;
	// make window
	glfwWindowHint(GLFW_CLIENT_API, GLFW_NO_API);
	GLFWwindow* window = glfwCreateWindow(640, 480, "Window Title", NULL, NULL);
	if(window == NULL) {
		puts("failed to create window");
		return(-100);
	}
	VkSurfaceKHR surface;
	glfwCreateWindowSurface(r->instance, window, NULL, &surface);
	sleep(1);


	// debug function that prints supported image formats
	//debug_print_image_formats(&r);
	
	// code goes here

	// cleanup
	renderer_deinit_instance(r);
	thread_pool_join(&tp);
	return 0;
}
