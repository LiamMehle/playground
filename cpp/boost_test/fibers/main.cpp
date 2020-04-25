#include <boost/fiber/all.hpp>
#include <stdio.h>

void greet() {
	puts("hi");
}

int main(void) {
	boost::fibers::fiber fiber(greet);
	fiber.join();
	return 0;
}