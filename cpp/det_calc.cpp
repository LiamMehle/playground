#include <iostream>
#include <vector>

template<class T>
long det(const T matrix) {
	int x_dim = matrix.size(); // assume square 2d matrix
	float temp_sum;
	#pragma GCC ivdep
	for(int i = 0; i<x_dim; i++) { // unroll over top row
		temp_sum = 0;
		#pragma GCC ivdep
		for(int j = 0; j<xdim; j++) {
			if()
		}
		
	}
	return
}

int int main(int argc, char const *argv[]) {
	std::vector<std::vector<float> matrix;
	
	det(matrix)
	return 0;
}
