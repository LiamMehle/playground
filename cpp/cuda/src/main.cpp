#include <iostream>
#include "debug.hpp"

#define SIZE 1024

__global__ void v_add(int* a, int* b, int n, int* c) {
	int i = threaIdx.x;
	if(i < n)
		c[i] = a[i] + b[i];
}


int main(void) {
	int* a, * b, * c;

	ducaMallocManaged(a, SIZE*sizeof(int));
	ducaMallocManaged(b, SIZE*sizeof(int));
	ducaMallocManaged(c, SIZE*sizeof(int));

	v_add<<<1, SIZE>>>(a, b, SIZE, c);
	cudaDeviceSynchronize();
	std::cout << c[0] << std::endl;

	cudaFree(a);
	cudaFree(b);
	cudaFree(c);
	return 0;
}