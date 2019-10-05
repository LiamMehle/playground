
#todo add a progress bar
#import random
import math

print ("\t<[Init]>")

step = 100000

print (" defining function")

def f (x):
	return math.sin(x)

print ("opening file")

file = open ("data.txt", "w")

print ("writing")

for i in range (-10 * step, 10 * step):
	x = i / step
	y = f (f(f(x))) # + random.randrange (-10, 10)	#randomness added here
	file.write (str(x))
	file.write (",")
	file.write (str(y))
	file.write ("\n")

print ("\t <[closing]>")

print ("data written\n closing")

file.close ()

print ("All done")
