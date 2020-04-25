#!/bin/sh
find . | entr bash -c "make clean -j12 ; clear ; time make ${1} -j1 ; echo ; echo done"
