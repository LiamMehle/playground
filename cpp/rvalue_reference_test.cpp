#include <stdio.h>
#include <vector>

#define vec std::vector<int>

vec& modify(vec&& v) {
  v[0] = 2;
	return v;
}

int main() {
	vec v1;
	v1.emplace_back(5);
	v1 = modify((vec&&) v1);
  printf("%d\n", v1.capacity());
}
