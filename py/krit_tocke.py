import asyncio

def perf_test(f):
	from time import process_time
	t0 = process_time_ns()
	f()
	t1 = process_time_ns()
	print(f'function took {(t1-t0)/1000_000}s')

def derivative(f, x=0):
	step = 0.00_001
	y0 = f(x)
	y1 = f(x+step)
	return (y1-y0)/step

def derivative_internal(f, x=0, recursion_level=0):
	step = 0.00_001
	if recursion_level == 1:
		return derivative(f, x)
	else:
		recursion_level = recursion_level-1
		y0 = derivative_internal(f, x, recursion_level)
		y1 = derivative_internal(f, x+step, recursion_level)
		return (y1-y0)/step



async def solve(f, result=0, guess=0, tolerance = .001):
	error = f(guess)-result
	while error > tolerance or error < -tolerance:
		guess = guess + (-error)/derivative(f, guess)
		error = f(guess)-result
	set_result(guess)



#	example
# 
# def f(x):
# 	return (10*x-5)
# 
# print(f'{derivative_internal(f,0,2):.4}')
# print(f'10x-5=0\nx={solve(f):.4}')
# 
solver = await solve(f)
print(f'10x-5=0\nx={solver:.4}')
