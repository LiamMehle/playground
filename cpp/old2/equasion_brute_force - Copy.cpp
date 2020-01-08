#include <stdio.h> // I like C-style c++

#define TARGET 2
#define STEP 0.0001
#define TOLERANCE 0.00000001

// costs less compilation time and no dependencies
template<class T>
T abs(T x) {
	if(x<0)
		return -x;
	return x;
}
double f(double x[1]) {
	return x[0]*x[0]*x[0];
}

// computes multi-variable derivative
template<int n>
void derivative(double f(double [n]), double x[n], double* return_address) {
	double base = f(x);
	for(int i=0; i<n;i++) {
		x[i] += STEP; // increment by step
		return_address[i] = (f(x) - base)/STEP;
		x[i] -= STEP; // return to previous value
	}
}

int main() {
	double guess[1] = {0};
	double value;
	double der[1];
	
	while(true) {
		value = f(guess);
		if(value == TARGET || (value > TARGET-TOLERANCE && value < TARGET+TOLERANCE)) {
			printf("\nresult: %f\n", guess[0]);
			return 0;
		}
		// computes derivative
		// der is the return value
		// der passed as pointer for multi-parameter function support
		derivative<1>(f, guess, (double*) der);
		{ // make sure at least one part of the derivative is not 0
			int fail = 1;
			for(unsigned int i=0;i<sizeof(guess)/sizeof(guess[0]);i++) {
				if(der[i] != 0) {
					fail = 0;
					break;
				}
			}
			if(fail) {
				return 1;
			}
		}
		
		printf("y=%f\tk=%f\n", value, der[0]);
		double err = abs(TARGET-value);
		if(value<TARGET) {
			for(unsigned int i=0;i<sizeof(guess)/sizeof(guess[0]);i++) {
				guess[i] += err/der[i];
			}
		}
		else if(value>TARGET) {
			for(unsigned int i=0;i<sizeof(guess)/sizeof(guess[0]);i++) {
				guess[i] -= err/der[i];
			}
		}
	}
}