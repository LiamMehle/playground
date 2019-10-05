#include <thread>
#include <string>
#include <iostream>
#include <vector>

void stub(short integer){
	std::cout << integer << std::endl;
}

int main()
{
	std::vector<std::thread> threadPool;
	for (short i = 0; i < 100; i++)
		threadPool.emplace_back(std::thread(stub, i));

	for (std::thread & th : threadPool)
		if(th.joinable())
			th.join();
	return 0;
}