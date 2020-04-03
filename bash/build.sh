#! /bin/dash
PWD="$(pwd)"
# defining queue manupulation functions
WAITQ=''
addq() {
	echo $@
	exec $@ &
	WAITQ="$WAITQ $!"
}
waitq() {
	wait $WAITQ
}

# start the enqueueing process

# this makefile WILL quit as soon as it finishes
addq make -C "/lib/modules/$(uname -r)/build" M=$PWD modules 1>/dev/null
addq go build -o main_go main.go
     GOPID=$!
addq gcc reader5r6.c -o reader -D_GNU_SOURCE -pthread -lrt -I. -O0 -std=c99
     wait $GOPID
addq ./build_asm.sh

# echo $0 is waiting for $WAITQ
waitq
chmod 774 main_go reader
echo done
