#define at_index(ptr, y, x, stride) ptr[x+y*stride]

__kernel void v_add(__global float* n, int count) {
	int i = get_global_id(0);
	if(i < count)
		at_index(n, 2, i, count) = at_index(n, 0, i, count) + at_index(n, 1, i, count);
	return;
}