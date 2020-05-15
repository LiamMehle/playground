VPATH =$(shell find . -type d -name src)
VPATH+=$(shell find . -type d -name obj)

# compiler options
CC    = avr-gcc
# -Os -DF_CPU=16000000UL -mmcu=atmega328p
CFLAGS= -Os -mmcu=atmega328p -Wall -Wpedantic -Werror
#CFLAGS+= -nostartfiles -nostdlib
OBJS := $(shell find ./src/ | grep -P '.*\.cp+')


# compiling 
all : main.out #install disassemble prepro

# detect what port my adruino is on

USBPORT=$(shell ls /dev/ttyUSB*)

# there's no avr-g++ so we have to make do
# :: operator updates the requirement with the a recepie
# depending on requirements furfilled
%.o :: %.cpp mk_dirs
	$(CC) $(CFLAGS) -c ./obj/$< -o $@ -x c++ -lstdc++

%.o :: %.c   mk_dirs
	$(CC) $(CFLAGS) -c ./obj/$< -o $@

main.out : $(OBJS) 
	$(CC) $(CFLAGS) $(OBJS) -o main.out

main.hex : main.out
	avr-objcopy -O ihex -R .eeprom $< $@

install: main.hex erase
	sudo avrdude -F -V -c arduino -p ATMEGA328P -P ${USBPORT} -b 115200 -U flash:w:$<

preproc.% : %.c
	$(CC) $(CFLAGS) -E $< -o blink.c 1>/dev/null; sleep 0

erase:
	sudo avrdude -e -V -c arduino -p ATMEGA328P -P ${USBPORT} -b 115200

disassemble.% : %.hex %.c
	avr-objdump --visualize-jumps -m avr -D $< > blink.s

mk_dirs :
	mkdir ./obj/ ; sleep 0
	mkdir ./src/ ; sleep 0
	mkdir ./bin/ ; sleep 0


clean:
	find . -type f | grep -P '.*\.hex' | xargs -P 1024 -Ii rm -f i 2>/dev/null; sleep 0
	find . -type f | grep -P '.*\.out' | xargs -P 1024 -Ii rm -f i 2>/dev/null; sleep 0
	rm main.hex   2>/dev/null ; sleep 0
	rm main.s     2>/dev/null ; sleep 0
	rm main       2>/dev/null ; sleep 0
	rm *.c        2>/dev/null ; sleep 0
	rm -rf ./obj/ 2>/dev/null ; sleep 0
	rm -rf ./bin/ 2>/dev/null ; sleep 0
	