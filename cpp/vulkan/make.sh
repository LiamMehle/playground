#!/bin/sh
find . | entr dash -c "clear ; make ${1} -j12 ; echo ; echo done"