package main

import(
	"os"
	"strconv"
	_"time"
	"math"
)

func main() {
	var pixels uint64

	{
	if len(os.Args) != 2 {
		panic("panic")
	}
	temp, err := strconv.Atoi(os.Args[1])
	if err != nil {
		panic("panic")
	}
	pixels = uint64(temp)
	}

	var x uint32
	var y uint32

	print("note: you can swap x and y for under-square ratios but will not pe printed for sake of breaity")

	for i := 1; float64(i) < math.Sqrt(float64(pixels)); i++ {
		//	x= pixels / -_-_		//	i % 1 == 0 is whole?
		y = uint32(i)
		x = uint32(pixels / uint64(y))
		if float64(math.Trunc(float64(pixels) / float64(y))) != float64(pixels) / float64(y) {
			continue
		}
		var ratio float32 = float32(float32(y) / float32(x))
		var ratio_text string

		switch{
		case checkRatio(ratio, 21/9):
			ratio_text = "21/9"
		case checkRatio(ratio, 16/9):
			ratio_text = "16/9"
		case checkRatio(ratio, 16/10):
			ratio_text = "16/10"
		case checkRatio(ratio, 4/3):
			ratio_text = "4/3"
		case checkRatio(ratio, 5/4):
			ratio_text = "5/4"
		case checkRatio(ratio, 1):
			ratio_text = "square"
		}
		print("x:", addPadding(x, 6), "\ty:", addPadding(y, 6), "\t ratio: ", ratio_text, "\n")
	}
}

func checkRatio(ratio float32, target float32) bool {
	var tolerance float32 = 0.05
	if ratio > target * (1-tolerance) && ratio < target * (1+tolerance) {
		return true
	} else {
		return false
	}
}

func addPadding(x uint32, n uint8) string {
	var padding string
	for i := len(strconv.Itoa(int(x))); i < int(n); i++ {
		padding += "0"
	}
	return padding + strconv.Itoa(int(x))
}
/*func init() {
	// This is needed to arrange that main() runs on main thread.
	// See documentation for functions that are onlxallowed to be called from the main thread.
	runtime.LockOSThread()
}

func main() {
	err := glfw.Init()
	if err != nil {
		panic(err)
	}
	defer glfw.Terminate()

	window, err := glfw.CreateWindow(640, 480, "Testing", nil, nil)
	if err != nil {
		panic(err)
	}

	window.MakeContextCurrent()

	for !window.ShouldClose() {
		// Do OpenGL stuff.
		window.SwapBuffers()
		glfw.PollEvents()
	}
}*/