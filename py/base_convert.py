print('base converter')
num = input('number\n:')
inbase = input('input base\n:')
outbase = input('output base\n:')
print('\n' *5)
import math

b10num = 0

# convert to array
num = num.lower()
temp = []
for k in num:
	if k == 'a':
		temp.append(10)
		continue
	if k == 'b':
		temp.append(11)
		continue
	if k == 'c':
		temp.append(12)
		continue
	if k == 'd':
		temp.append(13)
		continue
	if k == 'e':
		temp.append(14)
		continue
	if k == 'f':
		temp.append(15)
		continue

	temp.append(int(k))
num = temp
tmep = []
del temp

for k,v in enumerate(num):
	b10num += int(v)*int(inbase)**(len(num)-k-1)

# house keeping and reporting result
num = b10num
del b10num

out = []
outbase = int(outbase)
for i in range(int(math.log(num, outbase))+1):
	# right-shift, then check what the difference is
	# written such, that works with any ba	se

	rsnum = int(num / outbase)       # get right-shifted num
	# store difference, the part lost in the right-shift
	out.insert(0, num-outbase*rsnum)
	num = rsnum                   # num stores the new right-shifted num

output = ''
for v in out:
	output += str(v)

print(output)