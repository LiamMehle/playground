//#define _GLIBCXX_USE_CXX11_ABI 0
#include <iostream>
#include <thread>
#include <string>
#include <vector>
#include <chrono>
#include <condition_variable>
#include <mutex>
#include <stdlib.h>

class printer
{
	std::vector<std::string> queue ();
	std::mutex mtx;
	std::condition_variable cv ();
	bool terminate = false;

	void terminate_process ()
	{
		terminate = true;
		cv.notify_all ();
	}

	void siftDown ()
	{
		for (uint_fast8_t i = 0; i < (queue.size () -1); i++)
		{
			if (i = queue.size ())	//prevent error
				continue;
			queue[i] = queue[i+1];
		}
	}

	void init ()
	{
		std::thread printer ([] () {
			while (true)
			{
				if (terminate)
				{
					return;
				}

				if (!queue[0].empty)
				{
					std::cout << queue[0];
					siftDown ();
					queue.shrink_to_fit();
				}
				std::unique_lock<std::mutex> lock (mtx);
				cv.wait (lock);
			}
		});
	}

	template <class T>
	void enqueue (T input)
	{
		queue.emplace_back (std::to_string (input));
		cv.notify_one();
	}
	
};

int main ()
{

}