## Basic Linux Commands

Here, I will introduce you to some lightweight, easy commands that you can immediately try to build your confidence in navigating through the Linux terminal.

### The Basics:

```pwd``` shows the path to the current directory we are working on. 

```ls``` lists all files with the current directory we are working on.

```touch``` creates a file in our working directory. NOTE: We normally follow this up with the name of the file we want to create.

```mkdir``` creates a directory within our current one. The syntax for this is the same as the touch command.

```rm``` removes a file. Again, this follows the same syntax as touch and mkdir.

```rmdir``` removes an EMPTY directory. To remove a non-empty directory, we use the rm command, followed by -r. Again, this follows the same syntax as the previous three.

### Intermediate:

```man``` is usually followed up by another command and it shows the syntax/purpose of the command, along with any flags.

```cd``` allows us to navigate between directories. We pass the command, followed by the directory we want to enter, or .. if you want to traverse up a directory.

```cp``` copies files from one place to another.

```mv``` moves files between directories. It can be also be used to rename files.

```vim``` allows us to edit text. We simply pass the command, followed by the file we want to edit.

```su``` allows you to become the super/root user.

```sudo``` excecutes commands as the super/root user.


### Advanced:

```grep``` checks for patterns in text and returns them as standard output.

```file``` displays the file type

```chmod``` changes the permissions of a file
