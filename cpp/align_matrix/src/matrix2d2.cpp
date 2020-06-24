#include "matrix2d2"

matrix2d2::matrix2d2(a, width, height) : data(a), width(width), height(height) {}

void matrix2d2::align( void (*f)(uint64_t) = [](auto n){} ) noexcept {
	__asm volatile("# <PREFETCH>");
	__builtin_prefetch(data, 0, 3);
	__builtin_prefetch(data, 1, 3);
	__asm volatile("# </PREFETCH>");
	//__builtin_prefetch(data, 1, 0);
	for( uint64_t y_src = 0; y_src < height-1; y_src++ ) {
		for( uint64_t y_dst = y_src+1; y_dst < height; y_dst++ ) {
__asm volatile("# LLVM-MCA-BEGIN foo");
PERF_BEGIN
			T multiplier = at(y_src,y_dst) / at(y_src,y_src);
			[[unlikely]] if( __builtin_expect(multiplier == 0, 0) )
				continue;
			for( uint64_t x = 0; x < width; x++)
				at(x,y_dst) -= at(x,y_src)*multiplier;
PERF_END
__asm volatile("# LLVM-MCA-END");
		}
		f(y_src);
	}
}

void matrix2d2::set_row(uint64_t row, const a) {
	double* a_raw = std::decay(a);
	memcpy(at(0, row), a, width);
}

std::string matrix2d2::get_array_str() const noexcept {
	std::string str;
	for( uint64_t y = 0; y < height; y++) {
		for( uint64_t x = 0; x < width; x++) {
			str.append(std::to_string(const_at(x,y)));
			str.append("\t");
		}
		str.append("\n");
	}
	return str;
}