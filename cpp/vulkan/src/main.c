#include "pch.h"
#include "debug_utils.h"
#include "renderer.h"

int main(void) {
	renderer r;
	renderer_init_instance(&r);
	renderer_deinit_instance(&r);
	return 0;
}