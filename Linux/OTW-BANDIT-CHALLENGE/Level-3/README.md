## Level 3

### Problem

The password to for the next level is stored in a hidden file in the inhere directory.

### Clues 

We use the ls command to list files within a particular directory. It can be coupled with several options.
Use the 'man{ls}' command. The 'cd' command also allows us to move between directories.

### Solution

Input 'cd inhere' into the terminal to traverse into the inhere directory. Since the file is hidden, we will
not see it unless we pass the 'ls -a' command, the -a flag specifying to list all files and directories, 
including hidden ones. Then, we should see the name of the file. Pass 'cat{file}' into the terminal, and we
have our password for the next level.