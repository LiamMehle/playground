     make -j12 clean      &&
     clear                &&
time make -j12            &&
echo                      &&
##   make -j12 asm        &&
echo                      &&
echo                      &&
echo compilation finished &&
bin/main  ||  echo $?
echo
echo
echo loop finished
