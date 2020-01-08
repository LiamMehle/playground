#include <stdio.h>

#define RUNS 100000

inline unsigned long long cycles() {
  unsigned int eax, edx;
__asm__ volatile ("rdtsc\n"
        : "=r" (eax)
        :
        : );

  return eax;
}
int main() {
  unsigned int time0, time1, max = 0, sum = 0;
  unsigned int delta;
  double avg;
  for(int i = 0; i<RUNS; i++) {
    time0 = cycles();
    __asm__ volatile ("cpuid");
    time1 = cycles();
    delta = time1-time0;

    max = max < delta ? delta : max;
    sum += delta;
  }
  avg = (double)sum/(double)RUNS;
  printf("avg:%.2f\nmax:%i", avg, max);
  return 0;
}
