echo "${1}.c" | entr -c sh -c "gcc ${1}.c -o $1 -lpthread -g; echo done"
