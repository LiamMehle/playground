#define GLEW_STATIC
#include <GL/glew.h>
#include <GLFW/glfw3.h>
#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <chrono>
#include <unistd.h>

#define HEIGHT 480
#define WIDTH  640

typedef struct {
	double pos[2] = {0, 0};
	bool mouse[3] = {false, false, false};
} mouse_t;

mouse_t mouse;

static void cursorPositionCallback(GLFWwindow* window, double xPos, double yPos) {
	xPos /= WIDTH/2;
	yPos /= -HEIGHT/2;
	yPos += 1;

	mouse.pos[0] = xPos-1;
	mouse.pos[1] = yPos;
}

/*void mouse_button_callback(GLFWwindow* window, int button, int action, int mods)
{
	if (button == GLFW_MOUSE_BUTTON_LEFT && action == GLFW_PRESS) {
		vertecies[2] = 0;
		vertecies[3] = 0;
		puts("pressed");
	}
}*/




int main() {
	puts("booting");
	if(!glfwInit())
		return 1;

	auto window = glfwCreateWindow(WIDTH, HEIGHT, "Hello World", NULL, NULL);

	if(!window) {
		glfwTerminate();
		return 2;
	}
	glfwMakeContextCurrent(window);

	if (glfwRawMouseMotionSupported())
		glfwSetInputMode(window, GLFW_RAW_MOUSE_MOTION, GLFW_TRUE);
	else
		puts("raw Input is not supported");

	float vertecies[] = {
		-0.5,  -0.5, 
		 0.0,   1.0,  
		 0.5,  -0.5
	};
	auto vertex_count = sizeof(vertecies)/(sizeof(vertecies[0])*2);
	

	if(glewInit() != GLEW_OK)
		return 3;

	printf("using OpenGL version %s\n", glGetString(GL_VERSION));

	uint vbo;
	glGenBuffers(1, &vbo);
	glBindBuffer(GL_ARRAY_BUFFER, vbo);
	glBufferData(GL_ARRAY_BUFFER, sizeof(vertecies), vertecies, GL_STATIC_DRAW);
	glEnableVertexAttribArray(0);
	glVertexAttribPointer(0, 2, GL_FLOAT, GL_FALSE, sizeof(vertecies[0])*2, 0);

	glfwSetCursorPosCallback(window, cursorPositionCallback);
	//glfwSetMouseButtonCallback(window, mouse_button_callback);
	glEnableClientState(GL_VERTEX_ARRAY);
	

	constexpr auto fps_target = 60;
	constexpr auto ns = 1*1000*1000;
	constexpr auto frame_time = 1/fps_target*ns;

	glfwSwapInterval(0);

	while(!glfwWindowShouldClose(window)) {
		glClear(GL_COLOR_BUFFER_BIT);

		//usleep(frame_time);
		glfwPollEvents();
		
		vertecies[2] = mouse.pos[0];
		vertecies[3] = mouse.pos[1];

		glBufferData(GL_ARRAY_BUFFER, sizeof(vertecies), vertecies, GL_STREAM_DRAW);

		glDrawArrays(GL_TRIANGLES, 0, vertex_count);

		glfwSwapBuffers(window);
	}
	glDisableClientState(GL_VERTEX_ARRAY);
	return 0;
}