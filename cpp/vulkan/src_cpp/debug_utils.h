#ifndef debug_utils_h
#define debug_utils_h


#define log_int(var)   printf("[DEBUG] %s=%d\n", #var, var)
#define log_str(var)   printf("[DEBUG] %s=%s\n", #var, var)
#define log_float(var) printf("[DEBUG] %s=%f\n", #var, var)

void error_check(const VkResult);
void __glfw_error_callback(const int, const char* __restrict const);

#endif
