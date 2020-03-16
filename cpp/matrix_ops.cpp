#include <stdio.h>

template<class T>
T det(T** m, int dim, int skip) {
	// array is of size dim x dim
	if(dim == 0)
		return (T)0;
	if(dim == 1)
		return **m;
	if(dim == 2) {
		switch(skip) {
			#define f(x,y) {m[x][0]*m[y][1]-m[y][0]*m[x][1]}
			case 0:
				return f(1,2);
				break;
			case 1:
				return f(0,2);
				break;
			default:
				return f(0,1);
			#undef f
		}
	}

	// recursive part
	// matrix array that holds the data is of size dim x dim+1
	// skipping the skip part makes the resulting matix of size dim x dim
	bool sign = false;
	T sum;
	// dim+1 because that's the actual size of the matrix
	// guaranteed at start by overload of det()
	for(int i = 0; i<dim+1; i++) {
		if(i == skip)
			continue;
		if(!sign)
			sum += m[0][i]*det(&m[1], dim-1, i);
		else
			sum -= m[0][i]*det(&m[1], dim-1, i);
	}
	return sum;
}
// det wrapper for regular use
template<class T>
T det(T** m, int dim) {
	return det(m, dim-1, -1);
}


int main() {

	return 0;
}