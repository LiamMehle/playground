#VPATH=  $(shell find . -type d -name src) ./src/
#VPATH+= $(shell find . -type d -name obj) ./obj/
#VPATH+= $(shell find . -type d -name bin) ./bin/\n
VPATH:=./src/ ./obj/ ./bin/

# find all translaiton units and store obj names for each
OBJS  := $(shell find ./src/ | grep -P '.*\.c$' | tr '\.c' '.o' | sed 's/^.*\///' | tr '\n' ' ' | sed 's/ $//' )
# detect what port my adruino is on
USBPORT=$(shell ls /dev/ttyUSB*)

# compiler options
CC= avr-gcc
# -Os -DF_CPU=16000000UL -mmcu=atmega328p
CFLAGS= -Ofast -DF_CPU=16000000UL -mmcu=atmega328p -Wall -Wpedantic -Werror
#CFLAGS+= -nostartfiles -nostdlib


# compiling 
all : gen_dirs main.out


# translate unit
%.o : %.c
	$(CC) $(CFLAGS)   -c $< -o ./obj/$@

# link all translation units
%.out : $(OBJS)
	$(CC) $(CFLAGS) ./obj/* -o ./bin/$@

# extract hex file
%.hex : %.out
	avr-objcopy -O ihex -R .eeprom $< $@

# generate assembly
disassemble.% : %.hex %.c
	avr-objdump --visualize-jumps -m avr -D $< > blink.s

# install on first usb port recognized
install : main.hex erase
	sudo avrdude -F -V -c arduino -p ATMEGA328P -P ${USBPORT} -b 115200 -U flash:w:main.hex

# attemp to erase flash
erase :
	sudo avrdude -e -V -c arduino -p ATMEGA328P -P ${USBPORT} -b 115200

gen_dirs :
	mkdir ./obj/ 2>/dev/null ; sleep 0
	mkdir ./bin/ 2>/dev/null ; sleep 0



clean :
	find . -type f | grep -P '.*\.hex' | xargs -P 1024 -Ii rm -f i ; sleep 0
	find . -type f | grep -P '.*\.out' | xargs -P 1024 -Ii rm -f i ; sleep 0
	rm blink.s 2>/dev/null                                         ; sleep 0
	rm blink   2>/dev/null                                         ; sleep 0