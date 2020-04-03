#! /bin/dash
PWD="$(pwd)"
# defining queue manupulation functions
WAITQ=''
addq() {
	echo $@
	exec $@ 2>/dev/null 1>/dev/null &
	WAITQ="$WAITQ $!"
}
waitq() {
	wait $WAITQ
}

addq make -C "/lib/modules/$(uname -r)/build" M=$PWD clean
addq rm reader
addq rm main_cpp
addq rm main_go
addq rm rpm_output
addq rm timing_pipe
addq rm .makefile.swp
addq rm pigpio_write

waitq
