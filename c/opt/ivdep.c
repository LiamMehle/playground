#include <stdio.h>
#include <stdint.h>
#include <vector> // c++ specific

int main(void) {
	constexpr long len = 1<<27; // 27 is bearable, slow as fuck tho
	// uint_fast8_t* a = new uint_fast8_t[len];
	// uint_fast8_t* b = new uint_fast8_t[len];
	// uint_fast8_t* c = new uint_fast8_t[len];
	std::vector<uint_fast8_t> a_v;
	std::vector<uint_fast8_t> b_v;
	std::vector<uint_fast8_t> c_v;
	a_v.reserve(len);
	b_v.reserve(len);
	c_v.reserve(len);
	uint_fast8_t* a = &a_v[0];
	uint_fast8_t* b = &b_v[0];
	uint_fast8_t* c = &c_v[0];
	
	#pragma GCC ivdep
	for(long i = 0; i<len; i++) {
		a[i] = 1;
		b[i] = 2;
	}
	puts(".");
	#pragma GCC push_options
	#pragma GCC unroll 1<<10
	#pragma GCC ivdep
	for(long i = 0; i<len; i++) {
		c[i] = a[i] + b[i];
	}
	#pragma GCC pop_options
	printf("%u",c[0]);
	return 0;
}
