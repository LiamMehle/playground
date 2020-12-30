#include "pixel_manip.h"


Pixel get_pixel( const int x, const int y, const XWindowAttributes* const restrict attribs, const XImage* const restrict image_object ) {
	Pixel pixel; // named RVO

	const int bytes_per_pixel        = image_object->bits_per_pixel/8;
	const int bytes_per_channel      = bytes_per_pixel/4;
	const uint8_t* const raw_pixel_data = (uint8_t*) &image_object->data[(x + y*attribs->width)*bytes_per_pixel];
	
	pixel.r = *(raw_pixel_data+0*bytes_per_channel);
	pixel.g = *(raw_pixel_data+1*bytes_per_channel);
	pixel.b = *(raw_pixel_data+2*bytes_per_channel);
	pixel.a = *(raw_pixel_data+3*bytes_per_channel);

	return pixel;
}
