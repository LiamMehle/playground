from math import *
# variable setup
f_len = 20
head = '<|'
tail = '|>'
fill = '-'
mark = 'x'
len = f_len-4
value = .0

# physics engine setup
r = 1
g = 9.81
x = -.1      # 0 is centered
dt = 1*10^-6 # microsecond increments
v = 0

def iterate(x):
	v += dt*g*tan(asin(x/r))
	x += v*dt
	return x

def prin_val(x):
	# init
	string = f'{head}{fill*(floor(value*len)-1)}{mark}{fill*floor(((1-value)*len)-1)}{tail}'
	# print
	print(string)
	
while abs(x) < r*0.8: # to catch inaccuratices
	x = iterate(x)
	print_val(x)