VPATH= $(shell find . -type d -name src)
VPATH+=$(shell find . -type d -name obj)

# compiler options
CC     = avr-gcc
# -Os -DF_CPU=16000000UL -mmcu=atmega328p
OPTFLAGS = -Ofast -flto -fno-signed-zeros -fno-trapping-math -frename-registers -funroll-loops -fassociative-math -freciprocal-math
CFLAGS = -mmcu=atmega328p -Wall -Wpedantic -Werror -O0 #$(OPTFLAGS)
#CFLAGS+= -nostartfiles -nostdlib

# compiling
all : install.serial # disassemble.serial preproc.serial

# detect what port my adruino is on
USBPORT=$(shell ls /dev/ttyUSB*)

%.out : %.c 
	$(CC) $(CFLAGS) $< -o $@

%.hex : %.out
	avr-objcopy -O ihex -R .eeprom $< $@

preproc.% : %.c
	$(CC) $(CFLAGS) -E $< -o serial.c 1>/dev/null; sleep 0

install.%: %.hex erase
	sudo avrdude -F -V -c arduino -p ATMEGA328P -P ${USBPORT} -b 115200 -U flash:w:$<

erase:
	sudo avrdude -e -V -c arduino -p ATMEGA328P -P ${USBPORT} -b 115200

disassemble.% : %.hex %.c
	avr-objdump --visualize-jumps -m avr -D $< > serial.s


clean:
	find . -type f | grep -P '.*\.hex' | xargs -P 1024 -Ii rm -f i ; sleep 0
	find . -type f | grep -P '.*\.out' | xargs -P 1024 -Ii rm -f i ; sleep 0
	rm serial.s ; sleep 0
	rm serial   ; sleep 0
	rm serial.c ; sleep 0