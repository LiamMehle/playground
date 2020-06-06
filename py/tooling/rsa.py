import random as r
import math
import sys

def power(x, n, m, i = 0):
	if i >= 500:
		return (x ** n)
	if n == 1:
		return x
	if n % 2 == 0:
		return power(power(x, 2, i+1), n/2, i+1)
	return x*power(power(x, 2, i+1), (n-1)/2, i+1)

def mod_inverse(a, m) : 
	m0 = m 
	y = 0
	x = 1

	if (m == 1) : 
		return 0

	while (a > 1) : 

		# q is quotient 
		q = a // m 

		t = m 

		# m is remainder now, process 
		# same as Euclid's algo 
		m = a % m 
		a = t 
		t = y 

		# Update x and y 
		y = x - q * y 
		x = t 


	# Make x positive 
	if (x < 0) : 
		x = x + m0

	return x

def is_prime(num):
	if num == 2:
		return True
	if num < 2 or num % 2 == 0:
		return False
	for n in range(3, int(num**0.5)+2, 2):
		if num % n == 0:
			return False
	return True

r.seed()

def get_random_prime():
	while True:
		n = r.randint(191, 373)
		#n = r.randint(100,1000)
		if is_prime(n):
			return n

def gcd(a, b):
	while b != 0:
		a, b = b, a % b
	return a

def gen_keys():
	global p, q, n, e, d, totient
	p = get_random_prime()
	q = get_random_prime()
	while p == q:
		q = get_random_prime()
	
	totient = (p-1)*(q-1)
	print(f'totient = {totient}')

	e = r.randint(1, totient)

	#Use Euclid's Algorithm to verify that e and phi(n) are comprime
	g = gcd(e, totient)
	while g != 1:
		e = r.randint(1, totient)
		g = gcd(e, totient)

	print(f'e = {e}')
	
	# Use Extended Euclid's Algorithm to generate the private key
	d = mod_inverse(e, totient)

	print(f'd = {d}')
	n = p*q
	print(f'n = {n}')
	if n == 0:
		return 1
	return 0


p = 0
q = 0
e = 0
d = 0
n = 0
totient = 0

while True:
	ret_val = gen_keys()
	if ret_val:
		print('retrying')
		continue
	else:
		break

#sys.setrecursionlimit(2**31-1)
def encrypt(e, n , msg):
	return [(ord(char) ** e) % n for char in msg]
def decrypt(d, n, ciphertext):
	return ''.join([chr((char ** d) % n) for char in ciphertext])

def test():
	print('encripting')
	ciphertext = encrypt(e, n, 'deadbeef')
	print('encripted\ndecripting')
	print(decrypt(d, n, ciphertext))

test()