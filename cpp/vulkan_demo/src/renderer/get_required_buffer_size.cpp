#include "renderer_common.h"

size_t renderer::get_required_buffer_size() {
	return display_width*display_height*(32/8)*4;
}