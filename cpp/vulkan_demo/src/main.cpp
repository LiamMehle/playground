#include "renderer.h"
#include "io_helper.h"

#include <stdio.h>

renderer r;

// I'm sorry for the notation abomination
[[gnu::cold]]

int main( int argc, const char** argv, const char** env ) {
	// init the library
	
	r.init();
	
	std::cout << std::endl;
	std::cout << "finished" << std::endl;
	return 0;
}