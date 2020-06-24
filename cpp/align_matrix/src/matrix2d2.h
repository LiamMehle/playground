#ifdef IACA
#include "iacaMarks.h"
	#define PERF_BEGIN IACA_SSC_MARK(0); IACA_START;
	#define PERF_END       IACA_END;
#else
	#define PERF_BEGIN
	#define PERF_END
#endif

class matrix2d2 {
private:
	T* data;
	uint64_t width, height;

public:
	matrix2d2();
	matrix2d2(a, width, height);
	~matrix2d2();

	// one function call per row: matrix2d::set_row(row, { .. });
	void set_row(uint64_t row, const std::array<T, width>&& a);

	// aligns via euler-elimination, optional funciton call per target row
	void align( void (*f)(uint64_t) = [](auto n){} ) noexcept;

	// creates a string representation of the current state
	std::string get_array_str() noexcept const;

	// bracket operator replacement
	T& at(uint64_t x, uint64_t y);

	// compatibility version of bracket operator replacement
	T get_at(uint64_t x, uint64_t y) const;
};


#endif
