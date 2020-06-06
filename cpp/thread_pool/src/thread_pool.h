#ifndef THREADPOOL_H
#define THREADPOOL_H

class thread_pool {
public:
	thread_pool(int thread_count = 32);
	// set target count of threads
	// as threads finish their work they should check wether or not they should return
	void set_thread_count( int n );
	unsigned long get_thread_count() const;
	// add work to queue
	void enqueue( (void) f(void*) );
	unsigned long get_task_count() const;
	unsigned long get_max_task_count() const;
	~thread_pool();
	// set termination flag
};

#endif