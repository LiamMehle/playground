#include <X11/Xlib.h>
#include <X11/Xutil.h>
#include <vector>
#include <array>
#include <stdio.h>
#include <iostream>
#define CXX
#include "pixel_manip.h"

int main( int argc, const char** argv, const char** env ) {
	// init the library
	Display* display = XOpenDisplay( nullptr );
	Window root = DefaultRootWindow( display );

	XWindowAttributes attribs;
	XGetWindowAttributes( display, root, &attribs );

	Pixel pixel;
	while(1) {
		XImage* img = XGetImage( display, root, 0, 0, attribs.width, attribs.height,
			AllPlanes, ZPixmap );
		
		//pixel = get_pixel( 10, 10, &attribs, img );
		pixel = XGetPixel( img, 10, 10 );
		std::cout << pixel.r << "\t"
		<< pixel.g << "\t"
		<< pixel.b << std::endl;
	}

	std::cout << std::endl;
	std::cout << "finished" << std::endl;
	return 0;
}
