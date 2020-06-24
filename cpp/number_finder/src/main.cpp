#include <iostream>
#include <iomanip>
#include <math.h>
#include <mutex>
//#include <omp.h>


/*
	printing function is optimized for rare output
	I'd add a seperate thread/class to reduce system call volume otherwise
*/

int main( int argc, const char** argv, const char** env ) {
	auto condition = []( auto x, auto y, auto p, auto m ){ 
		if( __builtin_expect(static_cast<bool>( true
		        &&(x != floor(x))
		        &&(y != floor(y))
		        &&(m == floor(m))
		        &&(p == floor(p))
		        ), 0) )
			return true;
		else
			return false;
	};


	std::mutex stdout_mutex;

	constexpr uint64_t range_y      = sqrt(pow(10,10));//(uint64_t)-1;
	constexpr uint64_t range_x      = ceil(sqrt(range_y));
	constexpr double increment    = 0.01;
	constexpr auto   number_width = 8;
	#pragma omp parallel
	{
		#pragma omp for schedule(dynamic, 1024) collapse(2)
		for ( uint64_t a = 1; a < static_cast<uint64_t>(range_x*(1.0/increment)); a++ ) {
			for( uint64_t b = 1; b < static_cast<uint64_t>(range_y*(1.0/increment)); b++ ) {
				double x = static_cast<double>(a)*static_cast<double>(increment);
				double y = static_cast<double>(b)*static_cast<double>(increment);
				auto p = x + y;
				auto m = x * y;
				/*std::cout
					<< "x=" << std::setw(number_width) << x
					<< "\ty=" << std::setw(number_width) << y
					<< std::endl;*/
				if( condition( x, y, p, m ) ) {
					std::lock_guard<std::mutex> stdout_guard(stdout_mutex);
					std::cout
					<< "x=" << std::setw(number_width) << x
					<< "\ty=" << std::setw(number_width) << y
					<< "\tx+y=" << std::setw(number_width) << p
					<< "\tx*y=" << std::setw(number_width) << m
					<< std::endl;
				}
			}
		}
	}
}