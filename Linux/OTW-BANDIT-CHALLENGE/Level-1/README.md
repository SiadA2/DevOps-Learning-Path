## Level 1

### The Problem

The password for the next level is stored in in a file called -
in the home directory.

### Clues

Here we are introduced to the 'ls' and 'cat' commands. The 'ls' command
lists files in the directory we are working in. Like the 'ssh' command in
Level 0, it also comes with options/arguments, which can help us on this level. 
The 'cat' command is short for concatenate, as this command concatenates string 
text in files and prints them as standard output. There are multiple ways we can express 
files in linux to ensure the terminal reads them correctly.

### Soulution

Pass the 'ls -a' command into the terminal to verify that the - file exists, before passing 
'cat ./-'. This should give us the password. The reason why simply passing - doesn't work 
is because it's used to denote options and flags for commands, not files, so we must specify 
that this is a file by suffixing it with './', otherwise the machine technically hasn't received
any string to concatenate and will prompt you for standard input. 