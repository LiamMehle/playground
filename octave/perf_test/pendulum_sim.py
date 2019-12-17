from math import *

h = .5
fi = 5
fi = fi/180*pi
x = h*cos(fi)
dt = 0.000001
g = 9.81

v = 0
t = 0

print('simulating\n\n', end='');
while fi>0:
	v  += g*sin(fi)*dt
	x  -= v*dt
	fi = asin(x/h)
	t += dt

t *= 2; # time spent is simetric 
print(t);