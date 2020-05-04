import sys

def func(f):
	if __file__ != 'convert_to_gay.py':
		print('[ERROR] change the name backto convert_to_gay.py')
		quit()
	f()

if len(sys.argv) < 2:
	print_usage()

# beginning of regular alphabet is   97
# beginning of fancy-ass alphabet is 120042
@func
def main():
	for i, string in enumerate(sys.argv):
		if i == 0:
			continue
		for c in string:
			code = ord(c)
			if code < 97:
				code += 6
			print(chr(code + 120042 - 97), end='')
		print(' ', end='')
	print('')
