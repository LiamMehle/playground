#include <stdio.h> // I like C-style c++

#define TARGET 2
#define STEP 0.0001
#define TOLERANCE 0.00000001

template<class T>
T abs(T x) {
	if(x<0)
		return -x;
	return x;
}
double f(double x) {
	return x*2;
}

template<int n>
double* derivative(double f(double [n]), double x[n]) {
	double d[n];
	double base = f(x);
	for(int i=0; i<n;i++) {
		x[i] += STEP;
		d[i] = (base - f(x))/STEP;
		x[i] += STEP;
	}
	return d;
}

int main() {
	double guess = 0;
	double value;
	double der;
	
	while(true) {
		value = f(guess);
		if(value == TARGET || (value > TARGET-TOLERANCE && value < TARGET+TOLERANCE)) {
			printf("result: %f\n", guess);
			return 0;
		}
		
		
		der = (f(guess+STEP)-f(guess))/STEP; // dy/dx
		//printf("y=%f\tk=%f\n", value,der);
		if(value<TARGET) {
			guess += der*STEP*abs(TARGET-value);
		}
		else if(value<TARGET) {
			guess -= der*STEP*abs(TARGET-value);
		}
	}
	
}