#include <stdio.h>
int main(void) {
	#pragma GCC unroll 5
	for(register int i=0; i<50; i++){
		puts("hi");
	}
}