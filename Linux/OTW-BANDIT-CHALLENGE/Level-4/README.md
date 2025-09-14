## Level 4

### Problem

This file is the only human-readable file in the inhere directory.

### Clues

In this level, we are intoduced to wildcards. Wildcards highlight all files 
within a working directory. The default syntax for wildcards is './*'. We can 
add filters such as './*.txt', which filters for all .txt files in the directory.
We also see another new command: the file command. This simply determines a file type.

### Solution

The solution for this level is relatively simple. We put in 'file ./*' into the terminal,
and this should tell us the file type for each file. -file07 should return 'ASCII text'.
Great! This means that -file07 is human-readable and we can use the cat command, passing
this file as an argument. This should give us the password for the next level.