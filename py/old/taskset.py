import sys
import subprocess

# a small python script that changes the cpu affinity of
# all the processes that fall under a name

if len(sys.argv) == 0:
	print("how'd you manage to keep sys.argv equal to 0?!")
	exit()
if len(sys.argv) < 3:
	print("usage: sudo python3 taskset.py <cpu_mask> [process name(s)...]")
	exit()
# mock user
if sys.argv[0] != "taskset.py":
	print("Why rename the the script ?")

# get cpu mask
cpu_mask = sys.argv[1]

# build process list
process_list = ""
for i, arg in enumerate(sys.argv):
	if i < 2:
		continue
	process_list += arg + " "
process_list = process_list[:-1]

#do pidof
cmd = subprocess.run(["pidof", process_list], capture_output=True)
pid_list = cmd.stdout.decode().split(" ")
pid_list[-1] = pid_list[-1][:-1] #remove last newline

for pid in pid_list:
	print(pid)
	cmd = subprocess.run(["taskset", "-p", cpu_mask, pid])