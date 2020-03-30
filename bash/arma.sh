#! /bin/sh
# a quick a and dirty script for better arma3 performance
sudo -v
sudo -s
python3 ./taskset.py 1 steam &
python3 ./taskset.py 1 arma3.x86_64 &

renice -n  12 -u root &
renice -n  10 -u wolf &
renice -n -10 -p $(pidof steam) &
renice -n -20 -p $(pidof arma3.x86_64) &
wait
exit
