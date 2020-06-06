#include <iostream>
#include <sys/mman.h>
#include <chrono>
#include <unistd.h>

#define PAGE 4096
#define SIZE 0x0fffffff

char irrelevant = 0;
	volatile char* dump = &irrelevant;


template<class T1>
void abuse_heap(T1* raw_addr, size_t size) {
	char* addr = static_cast<char*>(raw_addr);

	//for(size_t i = 0; i < size-1; i++) // (read-)write test
	//	addr[i] = addr[i+1];

	for(size_t i = 0; i < size; i++)   // write test
		*dump = addr[i];
}

int main() {

	char* page_addr = (char*) mmap(NULL, SIZE, PROT_READ | PROT_WRITE, MAP_PRIVATE | MAP_ANONYMOUS, -1, 0);

	madvise(page_addr, SIZE, MADV_NORMAL);
	usleep(1024*1024);
	auto t0 = std::chrono::high_resolution_clock::now();
	abuse_heap(page_addr, SIZE);
	auto t1 = std::chrono::high_resolution_clock::now();
	auto normal = std::chrono::duration_cast<std::chrono::nanoseconds>(t1 - t0).count();
	std::cout << "MADV_NORMAL\t" << normal <<  "\t100%" << std::endl;

	munmap(page_addr, SIZE);
	page_addr = (char*) mmap(NULL, SIZE, PROT_READ | PROT_WRITE, MAP_PRIVATE | MAP_ANONYMOUS, -1, 0);

	madvise(page_addr, SIZE, MADV_SEQUENTIAL);
	usleep(1024*1024);
	t0 = std::chrono::high_resolution_clock::now();
	abuse_heap(page_addr, SIZE);
	t1 = std::chrono::high_resolution_clock::now();
	auto sequential = std::chrono::duration_cast<std::chrono::nanoseconds>(t1 - t0).count();
	std::cout << "MADV_SEQUENTIAL\t" << sequential << "\t" << ((float)sequential)/normal*100.0f << "%" << std::endl;

	munmap(page_addr, SIZE);
	page_addr = (char*) mmap(NULL, SIZE, PROT_READ | PROT_WRITE, MAP_PRIVATE | MAP_ANONYMOUS, -1, 0);

	madvise(page_addr, SIZE, MADV_RANDOM);
	usleep(1024*1024);
	t0 = std::chrono::high_resolution_clock::now();
	abuse_heap(page_addr, SIZE);
	t1 = std::chrono::high_resolution_clock::now();
	auto random = std::chrono::duration_cast<std::chrono::nanoseconds>(t1 - t0).count();
	std::cout << "MADV_RANDOM\t" << random << "\t" << ((float)random)/normal*100.0f << "%"<< std::endl;

	munmap(page_addr, SIZE);
	page_addr = (char*) mmap(NULL, SIZE, PROT_READ | PROT_WRITE, MAP_PRIVATE | MAP_ANONYMOUS, -1, 0);

	madvise(page_addr, SIZE, MADV_NORMAL);
	usleep(1024*1024);
	t0 = std::chrono::high_resolution_clock::now();
	abuse_heap(page_addr, SIZE);
	t1 = std::chrono::high_resolution_clock::now();
	auto normal2 = std::chrono::duration_cast<std::chrono::nanoseconds>(t1 - t0).count();
	std::cout << "MADV_NORMAL\t" << normal <<  "\t" << ((float)normal2)/normal*100.0f << std::endl;

	munmap(page_addr, SIZE);
	page_addr = (char*) mmap(NULL, SIZE, PROT_READ | PROT_WRITE, MAP_PRIVATE | MAP_ANONYMOUS, -1, 0);

	madvise(page_addr, SIZE, MADV_SEQUENTIAL);
	usleep(1024*1024);
	t0 = std::chrono::high_resolution_clock::now();
	abuse_heap(page_addr, SIZE);
	t1 = std::chrono::high_resolution_clock::now();
	sequential = std::chrono::duration_cast<std::chrono::nanoseconds>(t1 - t0).count();
	std::cout << "MADV_SEQUENTIAL\t" << sequential << "\t" << ((float)sequential)/normal*100.0f << "%" << std::endl;


	munmap(page_addr, SIZE);
	return 0;
}