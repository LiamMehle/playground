import random as r
import math

# this is a neural net example
# does not learn
# emulates and gate
# 2 neurons per layer
# 3 layers

r.seed(a=r.randint(0,128))
for i in range(r.randint(0,128)):
	r.seed(a=r.randint(0,128))

def sigmoid(x):
	return math.e**x/(math.e**x+1)

def mat_vec_mult(mat, vec):
	ret_val = [0 for i in range(len(mat))]
	for (y,row) in enumerate(mat):
		for (e_row, e_vec) in zip(row, vec):
			ret_val[y] += e_row * e_vec
	return ret_val

def iterate(net, weights):
	for y in range(len(net)-1):
		net[y+1] = mat_vec_mult(weights[y], net[y])
		for x in range(len(net[y])):
			net[y+1][x] = (sigmoid(net[y+1][x]*10)-0.5)*2

net     = [[0 for y in range(2)] for x in range(3)]
weights = [[[1 for y in range(2)] for x in range(2)] for z in range(3)]

def run_nn(params):
	net[0] = params
	iterate(net, weights)
	print(f'{net[0]} -> {net[-1]}')

run_nn([0,0])
run_nn([1,0])
run_nn([1,1])