#!/bin/bash

echo "go run . "banana" standard abc"
go run . "banana" standard abc | cat -e 
echo
echo "---------------------------------------------------------"

echo "run . "hello" standard | cat -e"
go run . "hello" standard | cat -e 
echo
echo "---------------------------------------------------------"

echo "go run . "hello world" shadow | cat -e"
go run . "hello world" shadow | cat -e 
echo
echo "---------------------------------------------------------"

echo "go run . "nice 2 meet you" thinkertoy | cat -e"
go run . "nice 2 meet you" thinkertoy | cat -e 
echo
echo "---------------------------------------------------------"

echo "go run . "you \& me" standard | cat -e"
go run . "you & me" standard | cat -e 
echo
echo "---------------------------------------------------------"

echo "go run . "123" shadow | cat -e"
go run . "123" shadow | cat -e 
echo
echo "---------------------------------------------------------"

echo "go run . "/\(\"\)" thinkertoy | cat -e"
go run . "/(\")" thinkertoy | cat -e 
echo
echo "---------------------------------------------------------"

echo "go run . "ABCDEFGHIJKLMNOPQRSTUVWXYZ" shadow | cat -e"
go run . "ABCDEFGHIJKLMNOPQRSTUVWXYZ" shadow | cat -e 
echo
echo "---------------------------------------------------------"

echo "go run . '\\!\" #$%&\'\"'\"'()*+,-./' thinkertoy | cat -e"
go run . '\!" #$%&'"'"'()*+,-./' thinkertoy | cat -e 
echo
echo "---------------------------------------------------------"

echo "go run . "It\'s Working" thinkertoy | cat -e"
go run . "It's Working" thinkertoy | cat -e 
echo
echo "---------------------------------------------------------"
