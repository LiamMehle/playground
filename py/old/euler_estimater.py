import math

def f(x):
	return pow(1+1/x, x)

def delta(target, res):
	diff = max(target,res)/min(target,res)
	diff = (diff-1)*100
	return diff
e = 2.71828182845905

i = 0
while True:
	i = i+1
	x = pow(2, i)
	y = f(x)
	if y == 1: # hit the limit of floating point
		break
	print(f'f(2^{i})={y:.10f}\t delta={delta(e,y):e}%')