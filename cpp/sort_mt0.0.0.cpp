// g++ sort_mt.cpp -IC:/Users/liam/git/playground/lib/glfw/include -lpthread -g -O0 -Wall -Wextra

#include <stdio.h>
#include <stdlib.h> // rand
#include <math.h>
#include <pthread.h>
#include <assert.h>

//#include <GLFW/glfw3.h>

pthread_attr_t* attr;

template<class T>
struct array_t{
	T* array;
	int len;
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
template<class T>
void* sort(T*, int);

// attempt at quick sort implementation
template<class T>
void* sort(void* ptr) {
	array_t<T>* args = (array_t<T>*) ptr;
	T* array = (T*)(args->array);
	int len = (int)(args->len);

	int index_left = 1, index_right = len-1;
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
			while(true) {
				while(true){
					// if the entire array has been processed, put pivot in place and exit
					if(index_right <= index_left)
						goto end;
					if(array[0] < array[index_left])
						break;
					index_left++;
				}
				while(true) {
					if(index_right <= index_left)
						goto end;
					if(array[0] > array[index_right])
						break;
					index_right--;
				}
				swap(array, index_left, index_right);
			}
	}
	end:
	if(array[index_left] < array[0])
		swap<T>(array, 0, index_left++);
	else
		swap<T>(array, 0, index_left-1);

	pthread_t t; 
	array_t<T> temp = {array, index_left-1};
	pthread_create((pthread_t*)(&t), attr, sort<T>, &temp);
	//printf("%d\n", t);
	//sort<T>(array, index_left-1);
	sort<T>(&array[index_left], len-index_right);
	pthread_join((pthread_t)t, NULL);
	return NULL;
}

// wrapper/default value
template<class T>
void* sort(T* array, int len) {
	pthread_attr_init(attr);
	pthread_attr_setstacksize(attr, 0);
	array_t<T> args = {array, len};
	sort<T>((void*)&args);
	return NULL;
}

int main() {
	for(int iter = 0; iter < 1000; iter++) {
		//puts("generating");
		fflush(stdout);
		#define LEN 1000
		int* a = (int*)malloc(LEN*sizeof(int));
		if(a == NULL)
			return 1;
		for(int i = 0; i<LEN; i++) {
			a[i] = rand();
		}

		//puts("sorting");
		fflush(stdout);
	
		#ifndef LEN
		const int len = sizeof(a)/sizeof(a[0]);
		#endif
		#ifdef LEN
		const int len = LEN;
		#undef LEN
		#endif

		sort<int>(a, len);
		//print_arr(a, len);
		free(a);
		printf("%4u\n", iter);
	}
	return 0;
}