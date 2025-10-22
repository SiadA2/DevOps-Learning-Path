#Welcome to level 5, the first boss-level of this challenge! In this level we are asked to:
# 1. Create a directory names 'Battlefield'
# 2. Inside Battlefield, create files named knight.txt, sorcerer.txt, and rogue.txt.
# 3. Check if knight.txt exists; if it does, move it to a new directory called Archive.
# 4. List the contents of both Battlefield and Archive.

#Here is the solution for this challenge:


#!/bin/bash

mkdir Battlefield
mkdir Archive
cd battlefield
touch knight.txt sorcerer.txt rogue.txt

if [ -e "Battlefield/knight.txt ]; then
    mv battlefield/knight.txt Archive
fi

ls Battlefield
ls Archive