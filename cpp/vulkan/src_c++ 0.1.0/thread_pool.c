#include "thread_pool.h"

#define EFULL 1

/*
pthread_t	thread list
int      	number of threads to init
cd       	condition variable to signal work
void*    	argument structure pointer
*/

/*
	to-do:
		-implement task_push
		-implement offload_work (public function) (must signal mutex)

		-add support for dynamic resizig of thread pool
*/

static unsigned int max_tasks;
static unsigned int thread_count;
/* // UNUSED
static unsigned int task_count(const task_queue_t* restrict const task_queue) {
	if(task_queue->head == task_queue->tail)
		return 0;
	if(task_queue->head > task_queue->tail)
		return task_queue->head - task_queue->tail;
	if(task_queue->head < task_queue->tail)
		return task_queue->head - ( max_tasks - task_queue->tail );
	return 0;
}
*/
static unsigned int task_count_is_zero(const task_queue_t* const task_queue) {
	if(task_queue->head == task_queue->tail)
		return 1;
	return 0;
}

static unsigned int task_count_is_full(const task_queue_t* const task_queue) {
	if(task_queue->head == task_queue->tail - 1)
		return 1;
	return 0;
}

static int task_push(task_queue_t* const task_queue, const task_t* const task) {
	pthread_mutex_lock(&task_queue->mutex);
	if(task_count_is_full(task_queue)) {
		pthread_mutex_unlock(&task_queue->mutex);
		return -EFULL;
	}

	task_queue->tasks[task_queue->head++] = *task;
	task_queue->head %= max_tasks;
	pthread_mutex_unlock(&task_queue->mutex);
	return 0;
}

static void task_pop(task_queue_t* const task_queue, task_t* return_value)  {
	pthread_mutex_lock(&task_queue->mutex);
	if(task_count_is_zero(task_queue)) {
		pthread_mutex_unlock(&task_queue->mutex);
		return_value->f = NULL;
		return;
	}
	*return_value = task_queue->tasks[task_queue->tail++];
	task_queue->head %= max_tasks;
	pthread_mutex_unlock(&task_queue->mutex);
}



#define thread_active()   pthread_mutex_lock(&args->mutex);   \
                          args->threads_working++;             \
                          pthread_mutex_unlock(&args->mutex)

#define thread_inactive() pthread_mutex_lock(&args->mutex);   \
                          args->threads_working--;             \
                          pthread_mutex_unlock(&args->mutex)

void* thread(void* args_raw) {
	thread_pool_t* args = (thread_pool_t*)args_raw;
	task_t task;
	pthread_mutex_t cv_mutex = PTHREAD_MUTEX_INITIALIZER;
	pthread_mutex_lock(&cv_mutex);
	pthread_mutex_lock(&args->mutex);
	args->threads_online++;
	pthread_mutex_unlock(&args->mutex);
	thread_active(); // active by default, unless terminating or sleeping

	while(1) {
		task_pop(&args->task_queue, &task);
		if(task.f != NULL) {    // if there's work to do
			task.f(task.args); // do work
			continue;
		}                      // else, check if should terminate
		//pthread_mutex_lock(&args->terminate_mutex);
		//asm volatile("mfence":::"memory");
		if(args->terminate){
			//pthread_mutex_unlock(&args->terminate_mutex);
			break;             // else, wait for either to change
		}
		//pthread_mutex_unlock(&args->terminate_mutex);
		thread_inactive();
		pthread_cond_wait(&args->cv, &cv_mutex);
		thread_active();
	}
	thread_inactive();
	pthread_mutex_lock(&args->mutex);
	args->threads_online--;
	pthread_mutex_unlock(&args->mutex);
	pthread_mutex_unlock(&cv_mutex);
	return NULL;
}
#undef thread_active
#undef thread_inactive



void thread_pool_make(thread_pool_t* thread_pool,
	const thread_pool_create_info* const create_info)  {

	*thread_pool         = (thread_pool_t) {
		.threads         = (pthread_t*)malloc(create_info->thread_count*sizeof(pthread_t)),
		.task_queue      = {
			.mutex       = PTHREAD_MUTEX_INITIALIZER,
			.tasks       = (task_t*)malloc(create_info->task_count*sizeof(task_t)),
			.head        = 0,
			.tail        = 0
		},
		.terminate       = 0,
		.thread_count    = static_cast<int>(create_info->thread_count),
		.task_count      = static_cast<int>(create_info->task_count),
		.mutex           = PTHREAD_MUTEX_INITIALIZER,
		.threads_online  = 0,
		.threads_working = 0
	};

	max_tasks    = create_info->task_count;
	thread_count =  create_info->thread_count;
	pthread_cond_init(&thread_pool->cv, NULL);

	// make threads, loop on pointer instead of indicies
	for(int i = 0; i < thread_pool->thread_count; i++) {
		pthread_create(&thread_pool->threads[i], NULL, thread, thread_pool);
	}
}

void thread_pool_join(thread_pool_t* const thread_pool) {
	
	thread_pool->terminate = 1;
	//asm volatile("mfence":::"memory");
	pthread_cond_broadcast(&thread_pool->cv);


	for(int i = 0; i < thread_pool->thread_count; i++) {
		pthread_join(thread_pool->threads[i], NULL);
	}
	pthread_cond_destroy(&thread_pool->cv);
	free(thread_pool->threads);
	free(thread_pool->task_queue.tasks);
}

void offload_work(thread_pool_t* const thread_pool, const task_t* const task) {
	task_push(&thread_pool->task_queue, task);
	pthread_cond_signal(&thread_pool->cv);
}
