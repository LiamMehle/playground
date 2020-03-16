#include <stdio.h>

int main() {
	int N0 = 7000000, E=15, N=10, dN;
	float p = 0.015;

	for(int i = 0; i<150; i++) {
		dN = -N;
		N = N*(1+E*(1-N/N0)*p);
		dN += N;
		printf("infected: %d   \tdN = %d\n", N, dN);
	}
}