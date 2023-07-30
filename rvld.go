package main
import (
	"os"
	"try-agaaain/rvld-practice/pkg/utils"
)
func main(){
	println("Hello, world!")
	if len(os.Args) < 2 {
		utils.Fatal("wrong args")
	}

	filename := os.Args[1]
	content, err := os.ReadFile(filename)
	utils.MustNoErr(err)
	println("content: %b", content[:10])
}