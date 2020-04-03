CONCURRENCY=4
obj-m += reader5r6lko.o
#.PHONY all
all: main.go
	dash ./build.sh
asm:
	dash ./build_asm.sh

test:
	gcc bounce_test.s -o bounce_test.o
	gcc bounce_test.o -o bounce_test
	rm bounce_test.o


#.PHONY clean
clean:
	dash clean.sh