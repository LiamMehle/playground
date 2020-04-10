#pragma once
#define log_int(var)   (printf(#var); printf("=%d", var))
#define log_str(var)   (printf(#var); printf("=%s", var))
#define log_float(var) (printf(#var); printf("=%f", var))

void error_check(VkResult);