#include <iostream>
#include <stdio.h>
#include <string.h>

class str {
private:
	char* ptr;
	int   len;
public:
	str(const char* s) noexcept {
		std::cout << "Created" << std::endl;
		len = strlen(s);
		ptr = (char*) malloc(len);
		strcpy(ptr, s);
	}
	str(const std::string& s) noexcept {
		std::cout << "Copied" << std::endl;
		len = s.length();
		ptr = (char*) malloc(len);
		strcpy(ptr, s.c_str());
	}
	str(str& s) noexcept {
		std::cout << "Copied" << std::endl;
		len = s.length();
		ptr = (char*) malloc(len);
		strcpy(ptr, s.c_str());
	}
	str(str&& s) noexcept {
		std::cout << "moved" << std::endl;
		len = s.len;
		ptr = s.ptr;
		s.len = 0;
		s.ptr = nullptr;
	}
	~str() {
		std::cout << "Deleted" << std::endl;
		free(ptr);
	}
	void print() const noexcept {
		printf("%s\n", ptr);
	}
	int length() const noexcept {
		return len;
	}
	char* c_str() const noexcept {
		return ptr;
	}
};

int main() {
	str string_class("hi");
	str other_class(std::move(string_class));
	other_class.print();
	return 0;
}