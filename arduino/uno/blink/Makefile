VPATH= $(shell find . -type d -name src)
VPATH+=$(shell find . -type d -name obj)

# compiler options
CC= avr-gcc
# -Os -DF_CPU=16000000UL -mmcu=atmega328p
CFLAGS= -Os -DF_CPU=16000000UL -mmcu=atmega328p -Wall -Wpedantic -Werror
CFLAGS+= -nostartfiles -nostdlib

# compiling 
all : blink.out

# detect what port my adruino is on

USBPORT:=$(shell ls /dev/ttyUSB*)

%.out : %.c 
	$(CC) $(CFLAGS) $< -o $@

%.hex : %.out
	avr-objcopy -O ihex -R .eeprom $< $@

disassemble.% : %.hex %.c
	avr-objdump --visualize-jumps -m avr -D $< > blink.s

install.%: %.hex erase
	sudo avrdude -F -V -c arduino -p ATMEGA328P -P ${USBPORT} -b 115200 -U flash:w:$<

erase:
	sudo avrdude -e -V -c arduino -p ATMEGA328P -P ${USBPORT} -b 115200

clean:
	find . -type f | grep -P '.*\.hex' | xargs -P 1024 -Ii rm -f i ; sleep 0
	find . -type f | grep -P '.*\.out' | xargs -P 1024 -Ii rm -f i ; sleep 0
	rm blink.s
	rm blink