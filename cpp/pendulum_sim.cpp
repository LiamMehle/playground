#include <math.h>
#include <stdio.h>

int main() {
	double h = .5;
	double fi = 5*M_PI/180;
	double x = h*cos(fi);
	double dt = 0.000001;
	double g = 9.81;
	
	double v = 0;
	double t = 0;
	
	puts("simulating\n\n");
	while(fi>0) {
		v  += g*sin(fi)*dt;
		x  -= v*dt;
		fi = asin(x/h);
		t  += dt;
	}
	t *= 2; // time spent is simetric 
	printf("%f", t);
	return 0;
}