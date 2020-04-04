__kernel void v_add(__global int** n, __global int count) {
	int i = get_local_id();
	if(i < count)
		n[2][i] = n[0][i] + n[1][i];
	return;
}