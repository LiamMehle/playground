package main

import(
	"fmt"
	_"time"
)

var busy bool = true

func main(){
	x_res := 100
	y_res := 50
	output := make(chan string, (x_res+1)*(y_res+1))															//making a different core handle the output as stdout is slow
	go output_worker(output)

	for y := y_res; y > 0; y-- {
		for x := 0; x < x_res; x++ {
			if int(mapf(f(mapf(float64(x), 0, float64(x_res), -10, 10)), -10, 10, 0, float64(y_res))) == y {																	//main logic "should there be a dot here?"
				output<- "0"																//if so tell output_worker to draw one
			} else {
				output<- "."																//else there should be a dot for formatting
			}
		}
		output<- "\n"																		//line drawn, append newline
	}
	for busy {}
}

func f (x float64) float64 {																//our function f(x)
	//time.Sleep(20 * time.Millisecond)
	return 1/x
}

func mapf (x float64, x_min float64, x_max float64, y_min float64, y_max float64) float64 {	//convertring/maping from one range to another
	//return x*((y_max-y_min)/(x_max-x_min))+y_min-x_min
	return (x-x_min)/(x_max-x_min)*(y_max-y_min)+y_min
}

func output_worker(output chan string){														//output worker logic "if there is stuff to output, output it until killed"
	//time.Sleep(1 * time.Second)
	busy = true
	for true{
		if len(output) > 0 {
			busy = true
		fmt.Print(<-output)
		//time.Sleep(1 * time.Millisecond)
		} else {
			busy = false
		}
	}
}