#!/bin/bash
path="$(pwd)"
cd /home/wolf/git/playground ; git add * ; git commit -m "$1" ; git push ; cd $path

