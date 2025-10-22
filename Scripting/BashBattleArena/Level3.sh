#In this level we are asked to create an if statement to output "Hero exists" if hero.txt  exists, otherwise output "Hero is missing" if hero.txt does not exist.
#Here is the solution:


#!/bin/bash 

if [ -f "Arena/hero.txt" ]; then 
    echo "hero found!"
else
    echo "hero missing!"
fi