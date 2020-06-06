#include <thread>
#include <vector>
#include <array>
#include <mutex>
#include <memory>
#include <string>
#include <iostream>
#define SERVER_PORT 80
#define MAXLINE     4096

#define SA struct sockaddr

template<typename T, int width, int height>
class matrix {
private:
	T data[width*height];

public:
	matrix()  {
		set_at(0,0,/* = */ 1);
		set_at(1,0,/* = */ 4);
		set_at(2,0,/* = */ 2);
		set_at(3,0,/* = */ 2);
		set_at(4,0,/* = */ -2);

		set_at(0,1,/* = */ 1);
		set_at(1,1,/* = */ 0);
		set_at(2,1,/* = */ -3);
		set_at(3,1,/* = */ -3);
		set_at(4,1,/* = */ 11);

		set_at(0,2,/* = */ 2);
		set_at(1,2,/* = */ 4);
		set_at(2,2,/* = */ 1);
		set_at(3,2,/* = */ 4);
		set_at(4,2,/* = */ -3);

		set_at(0,3,/* = */ 3);
		set_at(1,3,/* = */ 2);
		set_at(2,3,/* = */ -1);
		set_at(3,3,/* = */ 2);
		set_at(4,3,/* = */ 4);
	}
	~matrix() {}

	void align(void (*f)(void)) {
		for( uint64_t y_src = 0; y_src < height-1; y_src++ ) {
			for( uint64_t y_dst = y_src+1; y_dst < height; y_dst++ ) {
				T multiplier = get_at(y_src,y_dst) / get_at(y_src,y_src);
				if( multiplier == 0 )
					continue;
				for( uint64_t x = 0; x < width; x++)
					sub_at(x,y_dst, get_at(x,y_src)*multiplier);
			}
			f();
		}
	}

	std::string get_array_str() const {
		std::string str;
		for( uint64_t y = 0; y < height; y++) {
			for( uint64_t x = 0; x < width; x++) {
				str.append(std::to_string(get_at(x,y)));
				str.append("\t");
			}
			str.append("\n");
		}
		return str;
	}

	void set_at(uint64_t x, uint64_t y, T val) {
		data[x+y*width] = val;
	}

	void add_at(uint64_t x, uint64_t y, T val) {
		data[x+y*width] += val;
	}
	void sub_at(uint64_t x, uint64_t y, T val) {
		data[x+y*width] -= val;
	}

	T get_at(uint64_t x, uint64_t y) const {
		return data[x+y*width];
	}
};

matrix<float,5,4> mat;

void print_mat() {
	std::cout << mat.get_array_str() << std::endl;
}


int main( int argc, const char** argv ) {
	mat.align(print_mat);	
	return 0;
}