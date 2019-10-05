#include <iostream>
#include <thread>
#include <vector>
#include <mutex>
#include <string>
#include <condition_variable>
#define MAX_THREADS 8

long int sum = 0;
std::string output[128];	//output buffer
std::mutex sumMutex;					//sum protector
std::mutex outputMutex;					//output buffer protector
std::mutex printMutex;
std::condition_variable cv;				//to save the output buffer from wasting cpu cylces
bool terminate = false;



void arraySiftDown(std::string array[])
{
	for(int i = 1; i < array->length(); i++)
		array[i-1] = array[i];
}

template <class T>
int arrayFirstEmpty(T array[])
{
	for(int i = 0; i < array->length(); i++)
	{
		if(array[i] == "")
			return i;
	}
	return 0;
}

void printThread()
{
	begining:

	while(output[0] != ""){								//while the buffer isn't empty
		std::cout << output[0] << std::endl;
		{
			std::lock_guard<std::mutex> lock(outputMutex);
			arraySiftDown(output);				//ready the next output
		}
	}
	std::unique_lock<std::mutex> lock(printMutex);
	cv.wait(lock);

	if(!terminate)
		goto begining;
}

void log(std::string string)
{
	std::lock_guard<std::mutex> lock(outputMutex);
	int emptyIndex = arrayFirstEmpty<std::string>(output);
	output[emptyIndex] = string;
	cv.notify_one();
}

void work(short iterations, short id)
{
	//std::cout << id << ": spawned" << std::endl;
	log(id + ": spawned");
	long int result = 1;
	for(int i = 0; i < iterations; i++)
		result <<= 1;
	{
		std::lock_guard<std::mutex> lock(sumMutex);
		std::cout << id << ": writing" << std::endl;
		sum += result;
	}
	//std::cout << id << ": done" << std::endl;
	log(id + ": done");
}



int main()
{
	std::thread printer(printThread);

	std::vector<std::thread> tp(MAX_THREADS);
	for(int i = 0; i < MAX_THREADS; i++)
		tp.push_back(std::thread(work, 100, i));

	for(int i = 0; i < MAX_THREADS; i++)
	{
		if(tp[i].joinable())
		{
			std::cout << "main: " << i << " is joinable" << std::endl;
			tp.at(i).join();
			std::cout << "main: " << i << " joined" << std::endl;
		}
	}
	terminate = true;
	log("");
	printer.join();
	return 0;
}