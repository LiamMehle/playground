VPATH= $(shell find . -type d -name src)
VPATH+=$(shell find . -type d -name obj)

# compiler options
CC= avr-gcc
# -Os -DF_CPU=16000000UL -mmcu=atmega328p
CFLAGS= -Os -mmcu=atmega328p -Wall -Wpedantic
#CFLAGS+= -nostartfiles -nostdlib

# compiling 
all : disassemble.blink install.blink preproc.blink

# detect what port my adruino is on

USBPORT:=$(shell ls /dev/ttyUSB*)

%.out : %.c 
	$(CC) $(CFLAGS) $< -o $@

%.hex : %.out
	avr-objcopy -O ihex -R .eeprom $< $@

preproc.% : %.c
	$(CC) $(CFLAGS) -E $< -o blink.c 2>/dev/null; sleep 0

disassemble.% : %.hex %.c
	avr-objdump --visualize-jumps -m avr -D $< > blink.s

install.%: %.hex erase
	sudo avrdude -F -V -c arduino -p ATMEGA328P -P ${USBPORT} -b 115200 -U flash:w:$<

erase:
	sudo avrdude -e -V -c arduino -p ATMEGA328P -P ${USBPORT} -b 115200

clean:
	find . -type f | grep -P '.*\.hex' | xargs -P 1024 -Ii rm -f i ; sleep 0
	find . -type f | grep -P '.*\.out' | xargs -P 1024 -Ii rm -f i ; sleep 0
	rm blink.s ; sleep 0
	rm blink   ; sleep 0
	rm blink.c ; sleep 0