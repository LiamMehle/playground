from math import *

def f(x):
	return x*x

# finds second order
# derivatice around x
def der(f, x):
	base = f(x)
	der = (f(x+step) - base)/step
	return der

def der2(f, x):
	base = der(f, x)
	der2 = (der(f, x+step)-base)/step
	return der2
	
guess = 1
step = 0.0001
tolerance = step
target = 110821973

while True:
	y = f(guess)          # optimizaion
	delta = abs(y-target) # optimization and for clairty
	print(guess)          # feedback
	if delta < tolerance: # condition check
		break
	if der2(f, guess) != 0: # backup: if 2nd order derivative is 0
		if y < target:      # ballback to 1st order derivative
			guess += der2(f, guess)*delta # enhance guess
		if y > target:
			guess -= der2(f, guess)*delta
	else:                   # use 1st order derivative istead
		if y < target:
			guess += der(f, guess)*delta
		if y > target:
			guess -= der(f, guess)*delta