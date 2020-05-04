#include "/home/wolf/git/playground/openCL/src/config.h"
#include <stdint.h>

__kernel void v_add(__global VAR_TYPE* n, int count) {
	int i = get_global_id(0);
	//i = i % count; // some of the elements will be recalculated but the race condition
	                 // does not impact the result
	if(i < count)    // nVidia cards allow warp migration, making this faster
		at_index(n, 2, i, count) = sin(at_index(n, 0, i, count)*100) +
                               cos(at_index(n, 0, i, count)*100);
}

uint16_t pow(int base, int exponent) {
	int sum = 1;
	for(int i = 0; i < exponent; i++)
		sum *= base;
	return sum;
}

__kernel void hash_str(__global char* s, int s_len, int count, __global short* hashes) {
	int id = get_global_id(0);
	if(id >= count) // try to leave warp
		return;
	// each work item works on one string
	short hash = 0;
	for(int i = 0; i < s_len; i++) {
		uint16_t c = (uint16_t) at_index(s, id, i, s_len);
		hash +=  (uint16_t) c * pow(128, i);
	}
	hashes[id] = hash;
}
