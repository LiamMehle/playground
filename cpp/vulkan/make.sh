#!/bin/sh
find . | entr bash -c "clear ; time make ${1} -j12 ; echo ; echo done"
