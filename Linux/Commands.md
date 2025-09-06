## Basic Linux Commands

Here, I will introduce you to some lightweight, easy commands that you can immediately try to build your confidence in navigating through the Linux terminal.

### The Basics:

pwd: This shows the path to the current directory we are working on. 

ls: This lists all files with the current directory we are working on.

touch: This creates a file in our working directory. NOTE: We normally follow this up with the name of the file we want to create.

mkdir: This creates a directory within our current one. The syntax for this is the same as the touch command.

rm: This removes a file. Again, this follows the same syntax as touch and mkdir.

rmdir: This removes an EMPTY directory. To remove a non-empty directory, we use the rm command, followed by -r. Again, this follows the same syntax as the previous three.

### Intermediate:

man: This commands is usually followed up by another command and it shows the syntax/purpose of the command, along with any flags.

cd: This allows us to navigate between directories. We pass the command, followed by the directory we want to enter, or .. if you want to traverse up a directory.

cp: This copies files from one place to another.

mv: This moves files between directories. It can be also be used to rename files.

vim: This allows us to edit text. We simply pass the command, followed by the file we want to edit.

su: This allows you to become the super/root user.

sudo: This excecutes commands as the super/root user.


### Advanced:

grep: This checks for patterns in text and returns them as standard output.

file: This displays the file type

chmod: This changes the permissions of a file

chown: This changes the owner of a file

chgrp: This changes the group who own a file.