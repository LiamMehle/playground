#include <stdio.h>
#include <assert.h>
#include <iostream>

#define log_var(var) (std::cout << #var << "=" << var << std::endl)

template<class T>
void add(T** a, T** b, T**c, unsigned long len_x, unsigned long len_y) {
	for(int y = 0; y < len_y; y++)
		for(int x = 0; x < len_x; x++)
			c[x][y] = a[x][y] + b[x][y];
}


template<class T>
void subtract(T** a, T** b, T**c, unsigned long len_x, unsigned long len_y) {
	for(int y = 0; y < len_y; y++)
		for(int x = 0; x < len_x; x++)
			c[x][y] = a[x][y] - b[x][y];
}

template<class T>
T det(T** mat, unsigned long len_x, unsigned long len_y) {
	T sum = 0;
	int sign = 0; // 0 is positive, 1 is negative
	if(len_y == 1) {
		for(int x = 0; x < len_x; x++) {
			if(!sign)
				sum += mat[x][0];	
			else
				sum -= mat[x][0];
			sign = sign == 0;
		}
		return sum;
	}
	if(len_x == 1) {
		for(int y = 0; y < len_y; y++) {
			if(!sign)
				sum += mat[0][y];
			else
				sum -= mat[0][y];
			sign = sign == 0;
		}
		return sum;
	}

	// unroll across top row
	for(int x = 0; x < len_x; x++) {
		// make sub-matrix
		T** temp_mat = (T**) malloc(sizeof(T)*(len_x-1)*(len_y-1));
		// copy sub-matrix
		for(int i = 0; i < len_x; i++) {
			if(i == x)
				continue;
			for(int y = 1; y < len_y; y++) {
				if(i < x)
					temp_mat[i][y+1] = mat[i][y];
				else
					temp_mat[i-1][y+1] = mat[i][y];
			}
		}
		// recursive part
		if(!sign) {
			sum += mat[x][0] * det(temp_mat, len_x-1, len_y-1);
		} else {
			sum -= mat[x][0] * det(temp_mat, len_x-1, len_y-1);
		}
		sign = sign == 0;
		free(temp_mat);
	}
	return sum;
}

int main() {
	return 0;
}