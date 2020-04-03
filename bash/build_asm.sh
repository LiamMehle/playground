#! /bin/dash
# defining queue manupulation functions
exit # source accidentaly deleted with no trace
WAITQ=''
addq() {
	echo $@
	exec $@ &
	WAITQ="$WAITQ $!"
}
waitq() {
	wait $WAITQ
	WAITQ=''
}

addq as -mfpu=vfp reader.s -o reader2.o
addq gcc -Wall -c scanf.c -o scanf.o

# echo $0 is waiting for $WAITQ
waitq
addq gcc -Wall reader2.o scanf2.o -o reader2
# echo $0 is waiting for $WAITQ
waitq