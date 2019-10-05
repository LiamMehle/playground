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
#include <thread>
#include <mutex>
#include <condition_variable>

#define mi_km 1.609344	//mi to km multiplier
#define gal_l 3.7854	//gal to l multiplier

float imperial;
float metric;

std::mutex imperial_mutex;	//variable protector
std::mutex metric_mutex;
std::mutex slave_cv_mutex;	//CV mutex
std::mutex master_cv_mutex;

std::condition_variable slave_cv;	//CVs
std::condition_variable master_cv;

void convert() {
	{
		std::unique_lock<std::mutex> lock(slave_cv_mutex);
		slave_cv.wait(lock);
	}
	{
		std::lock_guard<std::mutex> lock1(metric_mutex);
		std::lock_guard<std::mutex> lock2(imperial_mutex);
		metric = 100*gal_l/(imperial*mi_km);
		master_cv.notify_all();
	}

}

int main() {
	std::thread worker(convert);

	std::cout << "vaule [mi/gal]: ";
	{
		std::lock_guard<std::mutex> lock(imperial_mutex);
		std::cin >> imperial;
		if (imperial <= 0)
			return 1;
		slave_cv.notify_all();
	}
	std::cout << "result [l/100km]: ";
	{
		std::unique_lock<std::mutex> lock(master_cv_mutex);
		master_cv.wait(lock);
	}
	{
		std::lock_guard<std::mutex> lock(metric_mutex);
		std::cout << metric << std::endl;
	}
	worker.join();
	return 0;
}