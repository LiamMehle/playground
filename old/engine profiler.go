package main
import(
	"fmt"
	"strings"
	"strconv"
	"io/ioutil"
)

/*
1.	read from file (recover progress)
2.	gater data
	show data
	save data (graph)
*/

type vector struct {
	gear uint8		//gear engaged when measurement was taken
	rpm float32		//rpm measured
	load float32	//gas pedal depression
	power float32	//performance measured
}

var data []vector = make([]vector, 1, 1000)
var recoveryComplete bool = false
var recoveryCycle bool = true

func main() {
	go recover()
	for !recoveryComplete {
		for !recoveryCycle {}	//wait for a cycle to finish to prevent duplicate data
		fmt.Println(data)
		recoveryCycle = false
	}
}

func recover (){
	archive, err := ioutil.ReadFile("/home/wolf/Documents/scripts/data")							//archive		file
	if err != nil {
		fmt.Println(err)
	}
	dataString := strings.Split(string(archive), ",")				//dataString	string[]	(slice of strings from whitch data will be recovered)
	fmt.Println(len(dataString), dataString)

	for i := 0; i < len(dataString)-3; i += 4 {
		j := int(i/4)
		fmt.Println(i, "/", j)

		for k := i; k < i+4; k++ {
			fmt.Println(k, dataString[k])
		}
		fmt.Println("------")
		
		{
		temp, err := strconv.ParseUint(dataString[i], 10, 8)
		if err == nil{
			data[j].gear = uint8(temp)
		}
		}

		{
		temp, err := strconv.ParseFloat(dataString[i+1], 32)
		if err == nil{
			data[j].rpm = float32(temp)
		}
		temp, err = strconv.ParseFloat(dataString[i+2], 32)
		if err == nil{
			data[j].load = float32(temp)
		}
		temp, err = strconv.ParseFloat(dataString[i+3], 32)
		if err == nil{
			data[j].power = float32(temp)
		}
		}
		recoveryCycle = true	//signal a completed cycle to main
	}
	fmt.Println("recovered", len(data), "data points")
	recoveryComplete = true
}