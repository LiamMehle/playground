#include <iostream>
#include <string>

void print (std::string s)
{
	std::cout << s;
}

int main ()
{
	std::string s = "Hello world.";
	print (s);
	return 0;
}