#In this level, we are asked to create a script which sorts all .txt files in a directory by size from smallest to largest and displays the sorted list

#here is the solution: 



#!/bin/bash

du -b -a ./*.txt | awk {'print 1'} | sort