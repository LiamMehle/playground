#include <stdio.h> // C-style c++

#define TARGET 2
#define TOLERANCE 0.00001
#define PARAMETER_COUNT 2

// costs less compilation time and no dependencies
template<class T>
T abs(T x) {
	if(x<0)
		return -x;
	return x;
}
double f(double x[PARAMETER_COUNT]) {
	/*if(x[1] == 0)
		x[1] = 0.00000000000001;*/
	return -2*x[0]*x[0]*x[1]+3*x[1];
}

// computes multi-variable derivative
template<int n>
void derivative(double f(double [n]), double x[n], double* return_address) {
#define STEP 0.0001;
	double base = f(x);
	for(int i=0; i<n;i++) {
		x[i] += STEP; // increment by step
		return_address[i] = (f(x) - base)/STEP;
		x[i] -= STEP; // return to previous value
	}
#undef STEP
}

int main() {
	double guess[PARAMETER_COUNT];
	double value;
	double der[PARAMETER_COUNT];
	
	// init
	for(int i=0;i<PARAMETER_COUNT;i++) {
		guess[i] = 1;
	}
	
	while(true) {
		value = f(guess);
		if(value == TARGET || (value > TARGET-TOLERANCE && value < TARGET+TOLERANCE)) {
			puts("\n\nresult:");
			for(int i=0;i<PARAMETER_COUNT;i++) {
				printf("x[%i] %f\n", i, guess[i]);
			}
			return 0;
		}
		// computes derivative
		// der is the return value
		// der passed as pointer for multi-parameter function support
		derivative<PARAMETER_COUNT>(f, guess, (double*) der);
		{ // make sure at least one part of the derivative is not 0
			int no_derivative = 1;
			for(int i=0;i<PARAMETER_COUNT;i++) {
				if(der[i] != 0) {
					no_derivative = 0;
				}
			}
			if(no_derivative) {
				for(int i=0;i<PARAMETER_COUNT;i++) {
					guess[i]++;
				}
				continue;
			}
		}
		
		printf("y=%f\n", value);
		double err = abs(TARGET-value)/PARAMETER_COUNT;
		if(value<TARGET) {
			for(int i=0;i<PARAMETER_COUNT;i++) {
				guess[i] += err/der[i];
			}
		}
		else if(value>TARGET) {
			for(int i=0;i<PARAMETER_COUNT;i++) {
				guess[i] -= err/der[i];
			}
		}
	}
}