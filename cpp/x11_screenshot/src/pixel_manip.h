#ifndef PIXEL_MANIP_H
#define PIXEL_MANIP_H

#include <stdint.h>
#include <X11/Xlib.h>
#include <X11/Xutil.h>

typedef struct {
	uint32_t r;
	uint32_t g;
	uint32_t b;
	uint32_t a; // often goes unused
} Pixel;

#ifdef CXX
extern "C" {
	Pixel get_pixel( const int x, const int y, const XWindowAttributes* const __restrict attribs, const XImage* const __restrict image_object );
};
#else
	Pixel get_pixel( const int x, const int y, const XWindowAttributes* const __restrict attribs, const XImage* const __restrict image_object );
#endif

#endif
