#!/bin/bash

targets=(main)
if [[ $1 = 'debug' ]]; then
	flags_opt='-Og'
	flags_debug='-g3 -Wall'
fi
if [[ $1 = 'perf' ]]; then
	flags_opt='-Ofast -fomit_stack_pointer -march=skylake'
	flags_debug='-Wall'
fi
	flags_extra='-pipe'
flags_lib='-lGL -L/usr/lib -L/usr/local/include -lglfw3 -lGLEW -ldl -lpthread'

for target in $targets; do
	g++ $flags_opt $flags_debug $flags_extra $target.cpp -o $target $flags_lib
done
