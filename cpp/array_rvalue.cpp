#include <stdio.h>

void* return_arr(int* a) {
	return a;
}

int main() {
	int arr[] = {2,3};
	if(&arr == return_arr(&arr[1]))
		puts("success");
	else
		puts("failiure");
	return 0;
}