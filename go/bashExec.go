package main

import(
	"os/exec"
)

func main() {
	cmd := exec.Command("/bin/sh", "echo hello!")
}