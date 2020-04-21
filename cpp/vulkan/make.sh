#!/bin/sh
find . | entr bash -c "make clean -j12 ; clear ; time make ${1} -j12 ; echo ; echo done"
