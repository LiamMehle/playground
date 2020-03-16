#include <stdio.h>
#include <stdlib.h> // rand
#include <math.h>
#include <pthread.h>
#include <chrono>

template<class T>
struct array_t{
	T* array;
	int* len;
};

void print_arr(int* array, int len) {
	printf("%d", array[0]);
	if(len < 2)
		return;
	for(int i = 1; i < len; i++) {
		printf(", %d", array[i]);
	}
	fflush(stdout);
}

template<class T>
void swap(T* array, int a, int b) {
	if(a==b)
		return;
	T temp = array[a];
	array[a] = array[b];
	array[b] = temp;
}

// attempt at quick sort implementation
template<class T>
void* sort(T* array, int len) {

	switch(len) {
		case 0:
		case 1:
			return NULL;
		case 2:
			if (array[0] > array[1]) {
				swap<T>(array, 0, 1);
			}
			return NULL;
		default:
			if(len < 0)
				return NULL; // tollerant to your bullshit
			// first element is pivot
			int index_left = 1, index_right = len-1;
			while(true) {
				while(true){
					// if the entire array has been processed, put pivot in place and exit
					if(index_right <= index_left)
						goto end;
					if(array[0] < array[index_left]) {
						break;
					}
					index_left++;
				}
				while(true) {
					if(index_right <= index_left)
						goto end;
					if(array[0] > array[index_right]) {
						break;
					}
					index_right--;
				}
				swap(array, index_left, index_right);
			}
			end:
			if(array[index_left] < array[0])
				swap<T>(array, 0, index_left++);
			else
				swap<T>(array, 0, index_left-1);

			//pthread_t t;
			//pthread_create(&t, NULL, sort<T>, array, &(--index_left));
			sort<T>(array, index_left-1);
			sort<T>(&array[index_left], len-index_right);
			//pthread_join(t, NULL);
	}
	return NULL;
}

// wrapper/default value
/*template<class T>
void* sort(array_t& arg) {
	sort(arg->array, arg->len);
	return arg->array;
}*/

int main() {
	auto t0 = std::chrono::high_resolution_clock::now();
	for(int iter = 0; iter < 10000; iter++) {
		fflush(stdout);
		#define LEN 1000
		auto a = (int*)malloc(LEN*sizeof(int));
	
		for(int i = 0; i<LEN; i++) {
			a[i] = rand();
		}
	
		fflush(stdout);
		
		#ifndef LEN
		const int len = sizeof(a)/sizeof(a[0]);
		#endif
		#ifdef LEN
		const int len = LEN;
		#undef LEN
		#endif
	
		sort(a, len);
		//print_arr(a, len);
		free(a);
	}
	auto t1 = std::chrono::high_resolution_clock::now();
	auto duration = std::chrono::duration_cast<std::chrono::microseconds>(t1-t0).count();
	printf("%li", (long)duration);
	fflush(stdout);
	return 0;
}