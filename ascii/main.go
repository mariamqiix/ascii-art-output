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
		if ascii.OnlyContains(os.Args[a], "\\n") {
			WordsInArr = WordsInArr[:len(WordsInArr)-1]
		}
		FirstWord := true
		for l := 0; l < len(WordsInArr); l++ {
			var Words [][]string
			Text1 := WordsInArr[l]
			Text1 = strings.ReplaceAll(Text1, "\\t", "   ")
			for j := 0; j < len(Text1); j++ {
				Words = append(Words, ascii.ReadLetter(Text1[j], fileName))
			}
			if validation == "output" {
				ascii.WriteFile(Words, FirstWord)
				FirstWord = false
			} else {
				for w := 0; w < 8; w++ {
					if len(Text1) == 0 {
						break
					}
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
