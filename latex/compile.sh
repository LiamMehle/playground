#!/bin/dash
find . -type f | entr dash -c 'clear ; find . -type f | grep -P ".tex$" | xargs -Istr -P 1024 dash -c "pdflatex str ; pdflatex str"'
