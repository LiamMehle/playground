#ifndef CONFIG_H
#define CONFIG_H

#define RUNS_GPU 360
#define KERNEL_PATH "/home/wolf/git/playground/openCL/src/kernel.cl"
#define VAR_TYPE float
#define at_index(ptr, y, x, stride) ptr[x+y*stride]

#endif
