#include <stdio.h>
#include <boost/fiber/all.hpp>
#include <stdint.h>
//#include <C:/ProgramData/chocolatey/lib/mingw/tools/install/mingw64/lib/gcc/x86_64-w64-mingw32/8.1.0/include/c++/boost/fiber/all.hpp>

void greet() {
	puts("hi");
}

int main() {
	uint64_t n = 42;
	puts("hello");
	printf("%d\n", n);

	boost::fibers::fiber f0(greet);
	//for(;;) {}
	return 0;
}