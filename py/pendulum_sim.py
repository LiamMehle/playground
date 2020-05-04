import time
import sys
import numpy as np

r = 10
h = 10
g = 9.807
v = 0
time_step = 0.00_000_1

i = 0
r_inv = 1/r

while True:
	if h < 0.001:
		break
	sin_phi = h*r_inv           # sin(phi) (mult is faster than div)
	sin_t   = sin_phi*time_step # sin(phi)*t common factor, calc only once
	v      += g * sin_t
	h      -= v * sin_t
	if i % 1000_00 == 0:
		print(f'phi={np.arcsin(sin_phi):.4}  \tv={v:.4}  \th={h:.4}  \t t={i*time_step:.2}')
	i += 1

print('')
print(f'oscilation time = {i*time_step*2}')