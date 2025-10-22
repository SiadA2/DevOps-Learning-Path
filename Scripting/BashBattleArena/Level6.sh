#In this level, we are asked to create a script which passes a filename as an argument and outputs the number of lines it has. If no argument is passed, then the script must return "No filename provided"
#Here is the solution:


#!/bin/bash

filename = "$1"

if [ $# -eq 0 ]; then 
    echo "No filename provided"
elif [ ! -e "$filename" ]; then
    echo "File not found"
else
    wc -l < "$filename"