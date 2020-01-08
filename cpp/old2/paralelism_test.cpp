#include <future>
#include <iostream>
#include <vector>

#define THREAD_NUMBER 30000

int main() 
{
	std::cout << "Main thread id: " << std::this_thread::get_id() << std::endl << std::endl;
	std::vector<std::future<void>> futures;
	for (int i = 0; i < THREAD_NUMBER; i++)
	{
		auto fut = std::async([i]
		{
			//std::this_thread::sleep_for(std::chrono::seconds(1));
			std::this_thread::sleep_for(std::chrono::milliseconds(i));
			std::cout << std::this_thread::get_id() << std::endl;
		});
		futures.push_back(std::move(fut));
	}
	for (int i = 0; i < THREAD_NUMBER; i++)
	{
		futures[i].wait();
	}
	std::cout << std::endl;
}