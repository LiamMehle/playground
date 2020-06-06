import sys

version = '1.2.2'

def print_usage():
	print(f'usage: python {__file__} [args] string_to_convert')
	print('this is a small utility to convert form \'regular fonts\' to \
the gay-ass font requested by whoever bugged the programmer to help with the task')
	print('you know who you are..')
	print('(thanks for the \'challenge\')')
	print()
	print('help            \t-h')
	print('                \t--help')
	print('version         \t-v')
	print('                \t--version')
	print('interactive mode\t-i')
	print('                \t--interactive')
	print('read from file  \t-f')
	print('                \t--file')
	print('select font     \t-o[font number]')
	print('                \t--font')

if len(sys.argv) <= 1:
	print_usage()
	quit()

strings_start = 1

while True:
	if len(sys.argv) <= strings_start:
		break
	if '-' in sys.argv[strings_start]:
		strings_start += 1
	else:
		break

def convert_char(c):
	code = ord(c)
	# fix for the extra characters
	# between uppercase Z andlowercase a
	if c.isalpha():
		if code < 97:
			code += 6
		return chr(code + offset)
	else:
		return chr(code)

for i, string in enumerate(sys.argv):
	if i >= strings_start:
		break
	if '-v' in string or \
	   '--version' in string:
		print(f'version {version}')
		quit()
	
	if '-h' in string or \
	   '--help' in string:
		print_usage()
		quit()

	if '-f' in string or \
       '--file' in string:
		f = open(sys.argv[i+1], 'r')
		str = f.read()
		f.close()
		for c in str:
			print(convert_char(c), end='')
		print()

	if '-i' in string or \
	   '--interactive' in string:
		while True:
			str = input()
			converted_str = ''
			for i in range(len(str)):
				converted_str += convert_char(str[i])
			print(converted_str)

	font_offset = 119990
	if '-o' in string or \
	   '--font' in string:
		if '1' in string:
			font_offset = 119990
		if '2' in string:
			font_offset = 120042

	offset = font_offset - 97




# lowercase a start offset

for i, string in enumerate(sys.argv):
	if i < strings_start:
		continue
	if 'liam' in string.lower():
		print('I\'m gay')
		quit()
	for c in string:
		oprint(convert_char(c), end='')
	
	print(' ', end='')

print('')