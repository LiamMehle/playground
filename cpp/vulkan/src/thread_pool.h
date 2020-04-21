#ifndef thread_pool_h
#define thread_pool_h

#include "pch.h"
/*
pthread_t	thread list
int      	number of threads to init
cd       	condition variable to signal work
void*    	argument structure pointer
*/

typedef struct {
	unsigned int task_count;
	unsigned int thread_count;
} thread_pool_create_info;

typedef struct {
	void (*f)(void*);
	void* args;
} task_t;

typedef struct {
	task_t*       /*restrict*/tasks; // will be accessed by each thread signaled
	int                       head;
	int                       tail;
	pthread_mutex_t           mutex;
} task_queue_t;

typedef struct {
	         pthread_t*       restrict  threads;
	         pthread_cond_t /*restrict*/cv;
	         task_queue_t               task_queue;
	         pthread_mutex_t            terminate_mutex;
	volatile int                        terminate;
	         int                        thread_count;
	volatile int                        task_count;
	         pthread_mutex_t           	mutex;
	volatile int                        threads_working;
	volatile int                        threads_online;
} thread_pool_t;

/* // static helper functions 
static          int  task_push (task_queue_t* restrict const, const task_t* restrict const);
static          void task_pop  (task_queue_t* restrict const,       task_t* restrict      );
static unsigned int  task_count(const task_queue_t* restrict const);
static unsigned int  task_count_is_full(const task_queue_t* restrict const task_queue);
*/

void thread_pool_make(thread_pool_t* const,
	const thread_pool_create_info* restrict const);
void thread_pool_join(thread_pool_t* restrict const);

void offload_work(thread_pool_t* restrict const, const task_t* restrict const);

#endif
