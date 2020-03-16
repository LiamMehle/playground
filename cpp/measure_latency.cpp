#include <stdio.h>
//#include <windows.h>
#define RUNS 10000

#pragma GCC inline
inline unsigned long long cycles() {
	unsigned int eax, edx;
__asm__ ("rdtsc\n"
				: "=A" (eax)
				:
				: );

	return eax;
}

void work() {
	volatile unsigned int time0, time1, max, min = 999999, sum = 0;
	unsigned int delta, junk;
	double avg;
	for(int i = 0; i<RUNS; i++) {
		__asm__ volatile ("imul eax"
			                :"=a" (junk)
			                :
			                :);
		time0 = cycles();

		time1 = cycles();
		delta = time1-time0;

		min = min > delta ? delta : min;
		max = max < delta ? delta : max;
		sum += delta;
	}
	avg = (double)sum/(double)RUNS;
}

int main() {
	//HANDLE process = GetCurrentProcess();
	//SetPriorityClass(process, REALTIME_PRIORITY_CLASS);
	//SetProcessAffinityMask(process, 1);


	unsigned int time0, time1, max, min = 999999, sum = 0;
	unsigned int delta;
	double avg;
	for(int i = 0; i<RUNS; i++) {
		time0 = cycles();
		work();
		time1 = cycles();
		delta = time1-time0;

		min = min > delta ? delta : min;
		max = max < delta ? delta : max;
		sum += delta;
	}
	avg = (double)sum/RUNS;

	printf("avg:%.2f\nmax:%i\nmin:%i\n", avg, max, min);
	fflush(stdout);
	return 0;
}
