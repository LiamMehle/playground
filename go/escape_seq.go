package main

import (
	"fmt"
	"log"
	"os"
	_"strings"
	"os/exec"
	_"strconv"
	_"bytes"
)

func main() {
	//escape := 27
	cmd := exec.Command("stty", "size")
	cmd.Stdin = os.Stdin
	out, err := cmd.Output()
	fmt.Printf("out: %#v\n", string(out))
	fmt.Printf("err: %#v\n", err)
	if err != nil {
	log.Fatal(err)
	}
	//stdout, stderr := cmd.Output()
	
	/*s := stdout
	return

	seperatedOutput := strings.Split(s, " ")
	resx, err := strconv.Atoi(seperatedOutput[0])
	resy, err := strconv.Atoi(seperatedOutput[1])
	if err != nil {
		goto error
	}

	fmt.Printf("x:%3s y:%3s\n", resx, resy)
	fmt.Printf("%c[s", escape)
	fmt.Printf("%c[1A", escape)	//move cursor up
	fmt.Printf("aaaa")
	fmt.Printf("%c8", escape)
	fmt.Printf("\n")

	error:
	if err != nil {
		fmt.Printf ("error")
		return
	}*/
}