#ifndef MATRIX_H
#define MATRIX_H

#include <string>
#include <array>
#include <string.h>

template<typename T, int width, int height>
class matrix2d {
private:
	T data[width*height];

public:
	matrix2d()  {}
	~matrix2d() {}

	// one function call per row: matrix2d::set_row(row, { .. });
	void set_row(uint64_t row, std::array<T, width>&& a) {
#ifdef DEBUG
		[[unlikely]] if(row < 0 || row >= height)
			std::exit(1);
		[[unlikely]] if(a.length() != width)
			std::exit(1);
#endif
		memcpy(&at(0, row), a.begin(), width*sizeof(T));
	}

	// aligns via euler-elimination, optional funciton call per target row
	void align( void (*f)(uint64_t) = [](){} ) noexcept {
		for( uint64_t y_src = 0; y_src < height-1; y_src++ ) {
			for( uint64_t y_dst = y_src+1; y_dst < height; y_dst++ ) {
				T multiplier = at(y_src,y_dst) / at(y_src,y_src);
				[[unlikely]] if( multiplier == 0 )
					continue;
				for( uint64_t x = 0; x < width; x++)
					at(x,y_dst) -= at(x,y_src)*multiplier;
			}
			f(y_src);
		}
	}

	// creates a string representation of the current state
	std::string get_array_str() noexcept {
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

	// bracket operator replacement
	T& at(uint64_t x, uint64_t y) {
#ifdef DEBUG
		[[unlikely]] if( x >= width || y >= height)
			std::exit(1);
#endif
		return data[x+y*width];
	}

	// compatibility version of bracket operator replacement
	T const_at(uint64_t x, uint64_t y) const {
#ifdef DEBUG
		[[unlikely]] if( x >= width || y >= height)
			std::exit(1);
#endif
		return data[x+y*width];
	}
};


#endif

/*		<example>
matrix2d<float,5,4> mat;

mat.set_row(0, {1,  4,  2,  2, -2});
mat.set_row(1, {1,  0, -3, -3, 11});
mat.set_row(2, {2,  4,  1,  4, -3});
mat.set_row(3, {3,  2, -1,  2,  4});

*///	</example>