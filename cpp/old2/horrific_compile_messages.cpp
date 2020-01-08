#include <future>
#include <iostream>
#include <vector>

int main() 
{
	std::cout << "Main thread id: " << std::this_thread::get_id() << std::endl;
	std::vector<std::future<void>> futures;
	for (int i = 0; i < 20; i++)
	{
		auto fut = std::async([]
		{
			std::this_thread::sleep_for(std::chrono::seconds(1));
			std::cout << std::this_thread::get_id() << " ";
		});
		futures.push_back(std::move(fut));
	}
	for (int i = 0; i < 20; i++)
	{
		futures[i].wait();
	}
	std::cout << std::endl;
}