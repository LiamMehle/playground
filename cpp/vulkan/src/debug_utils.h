#pragma once
#define log_int(var)   printf(#var); printf("=%d\n", var)
#define log_str(var)   printf(#var); printf("=%s\n", var)
#define log_float(var) printf(#var); printf("=%f\n", var)

void error_check(VkResult);