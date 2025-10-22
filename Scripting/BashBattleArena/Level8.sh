#In this level, we are told to create a script that goes through all of the .log files to look for a specific word and outputs the names of the files that contain said word
#Here is the solution:



#!/bin/bash

for file in ./*log; do
    if grep -q Error "./*.log"; then
        basename "$file"
    fi
done