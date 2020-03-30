#define GLEW_STATIC
#include <GL/glew.h>
#include <GLFW/glfw3.h>
#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <chrono>
#include <unistd.h>

#define HEIGHT 640
#define WIDTH  480

int main() {
	puts("booting");
	if(!glfwInit())
		return -1;

	auto window = glfwCreateWindow(HEIGHT, WIDTH, "Hello World", NULL, NULL);

	if(!window) {
		glfwTerminate();
		return -1;
	}
	glfwMakeContextCurrent(window);

	float vertecies[] = {
		-0.5,  -0.5, 
		 0.0,   0.5,  
		 0.5,  -0.5
	};
	auto vertex_count = sizeof(vertecies)/(sizeof(vertecies[0])*2);

	while(!glfwWindowShouldClose(window)) {
		glClear(GL_COLOR_BUFFER_BIT);
		constexpr auto frame_time = 1/60;
		constexpr auto ns = 1*1000*1000;
		usleep(frame_time*ns);

		// OpenGl code goes here
		glEnableClientState (GL_VERTEX_ARRAY);
		glVertexPointer(2, GL_FLOAT, 0, vertecies);
		glDrawArrays(GL_TRIANGLES, 0, vertex_count);
		glDisableClientState(GL_VERTEX_ARRAY);

		glfwSwapBuffers(window);

		glfwPollEvents();
	}
	return 0;
}