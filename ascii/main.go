package main

import (
	"ascii"
	"fmt"
	"os"
	"strings"
)

func main() {
	validation := ascii.Validation()
	a := 1
	b := 2
	if validation != "no" {
		if validation == "output" {
			a++
			b++
		}
		WordsInArr := strings.Split(os.Args[a], "\\n")
		fileName := "standard"
		if len(os.Args) == 3 && validation != "output" {
			fileName = strings.ToLower(os.Args[b])
		} else if len(os.Args) == 4 {
			fileName = strings.ToLower(os.Args[b])
		}
		for l := 0; l < len(WordsInArr); l++ {
			var Words [][]string
			Text1 := WordsInArr[l]
			if string(Text1) == "" {
				fmt.Println("")
			} else {
				for j := 0; j < len(Text1); j++ {
					Words = append(Words, ascii.ReadLetter(Text1[j], fileName))
				}
				if validation == "output" {
					WriteFile(Words)
				} else {
					for w := 0; w < 8; w++ {
						for n := 0; n < len(Words); n++ {
							fmt.Print(Words[n][w])
						}
						if w+1 != 8 {
							fmt.Println()
						}
					}
					fmt.Println()
				}

			}
		}
	}
}

func WriteFile(s [][]string) {
	ArgsPass := os.Args
	fileB, err := os.Create(strings.TrimLeft(ArgsPass[1], "--output="))

	if err != nil {
		fmt.Println("Error \n", err)
	} else {
		for w := 0; w < 8; w++ {
			for n := 0; n < len(s); n++ {
				fileB.WriteString(s[n][w])
			}
			if w+1 != 8 {
				fileB.WriteString("\n")
			}
		}
		fileB.WriteString("\n")

	}
}
