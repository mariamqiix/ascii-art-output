#!/bin/bash

echo "go run . --output=banner01.txt \"hello\" standard"
go run . --output=banner01.txt "hello" standard | cat -e 
echo
echo "---------------------------------------------------------"

echo "go run . --output=banner02.txt \"Hello There!\" shadow"
go run . --output=banner02.txt "Hello There!" shadow | cat -e 
echo
echo "---------------------------------------------------------"

echo "go run . --output=test00.txt \"First\nTest\" shadow | cat -e"
go run . --output=test00.txt "First\nTest" shadow | cat -e 
echo
echo "---------------------------------------------------------"

echo "go run . --output=test01.txt \"hello\" standard | cat -e"
go run . --output=test01.txt "hello" standard | cat -e 
echo
echo "---------------------------------------------------------"

echo "go run . --output=test02.txt \"123 -> \#$%\" standard | cat -e"
go run . --output=test02.txt "123 -> #$%" standard | cat -e 
echo
echo "---------------------------------------------------------"

echo "go run . --output=test03.txt \"432 -> \#$%\&@\" shadow | cat -e"
go run . --output=test03.txt "432 -> #$%&@" shadow | cat -e 
echo
echo "---------------------------------------------------------"

echo "go run . --output=test04.txt \"There\" shadow | cat -e"
go run . --output=test04.txt "There" shadow | cat -e 
echo
echo "---------------------------------------------------------"

echo "go run . --output=test05.txt \"123 -> \"#$%@\" thinkertoy | cat -e"
go run . --output=test05.txt "123 -> \"#$%@" thinkertoy | cat -e 
echo
echo "---------------------------------------------------------"

echo "go run . -output=test06.txt \"2 you\" thinkertoy | cat -e"
go run . --output=test06.txt "2 you" thinkertoy | cat -e 
echo
echo "---------------------------------------------------------"

echo "go run . --output=test07.txt 'Testing long output!' standard | cat -e"
go run . --output=test07.txt 'Testing long output!' standard | cat -e 
echo
echo "---------------------------------------------------------"
