#include <iostream>
#include <thread>
//#include <ctime>
#define PerformanceProfiling 0

bool isFinished = false;

void workFunc()
{
	/*#if PerformanceProfiling
	clock_t t = clock();
	#endif*/

	while(!::isFinished)
	{
		/*#if PerformanceProfiling
		t = clock() - t;
		std::cout << t;
		#endif*/

		std::cout << "Working";
	}
}

int main()
{
	std::thread worker(workFunc);
	std::cin.get();
	::isFinished = true;
	worker.join();

	return 0;
}