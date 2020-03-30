/*
Program: Fuel consumption unit converter
desc: An agressivly optimised (bloated) unit converter for practice.
Author: Wolf

start thread
get input
convert (send info to thread)
get output
send output

imperial	=> mi/gal
metric		=> l/100km

*/
#include <iostream>

#define mi_km 1.609344	//mi to km multiplier
#define gal_l 3.7854	//gal to l multiplier

int main() {
	register float imperial;
	register float metric;

	std::cout << "vaule [mi/gal]: ";
	std::cin >> imperial;
	std::cout << "result [l/100km]: " << 100*gal_l/(imperial*mi_km) << std::endl;
	
	return 0;
}