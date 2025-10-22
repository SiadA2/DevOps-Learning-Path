#In this level, we are asked to create a script that outputs numbers 1 to 10, one number per line.
#Here is the solution:


#!/bin/bash

for number in $(seq 1 10); do
    echo "Number: $number"

done