echo "${1}.cpp" | entr -c sh -c "g++ ${1}.cpp -o $1 -pthread; echo done"
