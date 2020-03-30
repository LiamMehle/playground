import keyboard as kb
import subprocess as sp
import time
#set cpu power with key presses

def clear():
	for i in range(100):
		print()


while True:
	#try:  # used try so that if user pressed other than the given key error will not be shown
	kb.wait('insert')
	for i in range(100):
		time.sleep(.05)
		if kb.is_pressed('shift+insert'):  # high power
			sp.run(['sudo', 'cpupower', 'frequency-set', 'all', '-d', '3.9G', '-u', '3.9G', '-g', 'performance'])
			clear()
			print('high power')
		elif kb.is_pressed('control+insert'):
			sp.run(['sudo', 'cpupower', 'frequency-set', 'all', '-d', '800M', '-u', '800M', '-g', 'powersave'])
			clear()
			print('low power')
		elif kb.is_pressed('insert'):
			sp.run(['sudo', 'cpupower', 'frequency-set', 'all', '-d', '800M', '-u', '800M', '-g', 'powersave'])
			clear()
			print('medium power')