## Level 2

### Problem

We are told that the passowrd for the next level is located in a file named 
--spaces in this filename--.

### Clues

There are no new commands for this level, however the way we represent our file
will be vital here.

### Solution 

Pass the 'ls -a' command to double-check that the file exists, and pass 
'cat "--spaces in this filename--"'. The inverted commas around --spaces in this filename--
are key here since since there are spaces within the filename so without them, 
the VM would read them as seperate files (spaces, in, this and filename etc.) and 
you would most likely get an error message displaying the files do not
exist, so to reiterate, we must enclose the file in inverted commas to get the password 
for the next level.