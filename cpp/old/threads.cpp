#include <string>
#include <iostream>
#include <thread>
#include <mutex>
#include <condition_variable>

/*
to-do
-implement std::sharedMutex for output

*/

std::mutex outputMutex;
std::condition_variable outputConditionVariable;
std::string output = "";

bool loggerReady = false;
bool loggerActive = true;
void log()
{
	while(true) {
		loggerReady = true;
		std::unique_lock<std::mutex> lock(outputMutex);
		outputConditionVariable.wait(lock);
		if(!loggerActive)
			break;
		std::cout << "[log]: " << output << std::endl;	// log message
		output = "";								// clear buffer

	}
	std::cout << "thread finishing\n";
}

int main()
{
	std::thread logger(log);
	for(auto i = 0; i < 3; i++)
	{
		std::cin >> output;
		outputConditionVariable.notify_one();

		while(!loggerReady)
			std::cout << "main: waiting" << std::endl;
	}
	loggerActive = false;
	outputConditionVariable.notify_one();


	logger.join();
	std::cout << "thread finished\n";
}