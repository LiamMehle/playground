#include <thread>
#include <vector>
#include <array>
#include <mutex>
#include <memory>
#include <string>
#include <iostream>

#include "matrix.h"

#define SERVER_PORT 80
#define MAXLINE     4096

#define SA struct sockaddr



matrix2d<float,5,4> mat;

void print_mat() {
	std::cout << mat.get_array_str() << std::endl;
}


int main( int argc, const char** argv ) {

	mat.set_row(0, {1,  4,  2,  2, -2});
	mat.set_row(1, {1,  0, -3, -3, 11});
	mat.set_row(2, {2,  4,  1,  4, -3});
	mat.set_row(3, {3,  2, -1,  2,  4});

	mat.align(print_mat);	
	return 0;
}