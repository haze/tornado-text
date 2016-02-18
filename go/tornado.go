package main

import (
	"bufio"
	"fmt"
	"os"
	"strings"
	"unicode/utf8"
)

func main() {
	// var text string
	var lineCount int
	reader := bufio.NewReader(os.Stdin)
	fmt.Print("Enter some text: ")
	text, _ := reader.ReadString('\n')
	text = strings.TrimSpace(text)
	if !(utf8.RuneCountInString(text) >= 1) {
		fmt.Print("ERROR: Enter some text!\n")
		main()
	}
	fmt.Print("Enter line amount (-1 for infinite): ")
	_, ierr := fmt.Scanf("%d", &lineCount)
	if ierr != nil {
		fmt.Printf("[%s]: ERROR: Enter a line amount!\n", ierr)
		main()
	}

	if string(text[utf8.RuneCountInString(text)-1]) != " " {
		text = strings.Join([]string{text, " "}, "")
	}

	fmt.Println(text)
	if lineCount != -1 {
		for i := 0; i < lineCount; i++ {
			text = shift(text)
			fmt.Println(text)
		}
	} else {
		for {
			text = shift(text)
			fmt.Println(text)
		}
	}
	os.Exit(0)
}

func shift(str string) string {
	return strings.Join([]string{string(str[1:]), string(str[0])}, "")
}
