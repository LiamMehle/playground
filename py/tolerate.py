def add(x[[]]):
	res = [0,0]
	for e in x:
		res[0] += e[0]
		res[1] += e[1]
	return res

def neg(x[]):
	x[0] = -x[0]
	x[1] = -x[1]
	return x

def mul(x[[]]):
	res =[0,0]
	for i, e in enumerate(x):
		if i == 0:
			res = e
			continue
		res[0] *= e[0]
		res[1] += e[1]/e[0] # tolerance here is relative
	res[1] *= res[0]        # tolerance is converted to absolute
	return res
