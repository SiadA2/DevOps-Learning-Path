## Level 5

### The Problem

In this level, the password is stored somewhere in the 'inhere' directory. We know this file is:

Human-readable

1033-bytes in size

Non-executable

### Clues 

In this level, we are introduced to to the ```du``` command. This displays the size of a file. Wildcards can also help on this level. We are also introduced to the grep command. This is used to check for any patterns. Another function that will help us on this level is piping. This is when we pass the output of one command and use it as input for another, and it's usually identifiable by the '|' between the commands.

### The Solution

We pass ```du -b */{.,}*``` into the terminal and pipe it to ```grep "1033"```. The full command should look something like this:

```du -b */{.,}* | grep "1033"```

The -b flag in the du command specifies to the terminal to print the output in bytes. The wildcard expression above tells Linux to go through every file within the inhere directory, even if they are within different subdirectories. ```grep "1033"``` looks for the number 1033, and prints the line that contains the number. Here, we get the only file in the inhere directory that is 1033-bytes in size, so we can assume that it's human-readable and non-executable. 

However, we can confirm this by passing ```file (path-to-file)```, which should return 'ASCII text', which means that the file is human-readable; don't worry about the other jargon after that.
Then we can list the contents of the directory that the file is in. It should not be highlighted and should be in the default color of your terminal text, which shows that it isn't executable.

Pass ```cat (filename)```, which will print the password for the next level.