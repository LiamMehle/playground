#include "/home/wolf/git/playground/openCL/src/config.h"

__kernel void v_add(__global VAR_TYPE* n, int count) {
	int i = get_global_id(0);
	//i = i % count; // some of the elements will be recalculated but the race condition
	                 // does not impact the result
	if(i < count)    // nVidia cards allow warp migration, making this faster
		at_index(n, 2, i, count) = sin(at_index(n, 0, i, count)*100) +
                               cos(at_index(n, 0, i, count)*100);
}
