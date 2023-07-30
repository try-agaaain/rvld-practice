package utils

import (
	"fmt"
	"os"
)

func Fatal(val any){
	fmt.Printf("rvld: \033[0;1;31mfatal:\033[0m %v \n", val)
	os.Exit(1)
}

func MustNoErr(err any){
	if err != nil{
		Fatal(err)
	}
}