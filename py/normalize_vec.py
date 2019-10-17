import math
x = [1,3,5]
for i, k in enumerate(x):
	x[i] = x[i]*1000
sum = 0
for i, k in enumerate(x):
	sum = sum + pow(x[i],2)
sum = pow(sum, 1/2)
print(f'vector: {x}\nlength: {sum}')

for i, k in enumerate(x):
	x[i] = x[i]/sum

sum = 0
for i, k in enumerate(x):
	sum = sum + pow(x[i],2)

sum = pow(sum, 1/2)
print(f'\nvector: {x}\nlength: {sum}')