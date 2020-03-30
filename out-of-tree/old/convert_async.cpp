/*#include <iostream>       // std::cout
#include <future>         // std::async, std::future
#include <chrono>         // std::chrono::milliseconds
*/
#include <pch.h>
#define mi_km 1.609344  //mi to km multiplier
#define gal_l 3.7854  //gal to l multiplier

float convert (double imperial)
{
  return 100*gal_l/(imperial*mi_km);
}

int main ()
{
  std::cout << "vaule [mi/gal]: ";

  double imperial;
  std::cin >> imperial;
  std::future<float> metric = std::async (std::launch::async, convert, imperial);

  std::cout << "result [l/100km]: " << std::flush;

  std::cout << metric.get () << std::endl;
  return 0;
}