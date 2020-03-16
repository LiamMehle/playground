clang -masm=intel -m32 -c -I/mingw/include measure_latency.cpp %*
g++ -masm=intel measure_latency.o %*
