## Common Linux Commands

Here, I will introduce you to some lightweight, easy commands that you can immediately try to build your confidence in navigating through the Linux terminal. Try this free playground at https://killercoda.com/playgrounds/scenario/ubuntu, where you can try out these commands below with no risk at all to your system.

### The Basics:

```pwd``` shows the path to the current directory we are working on. 

```cat``` allows us to concatenate text and print it to standard input. In layman's terms, it simply prints text into into the terminal for us to see, whether from a file (```cat example.txt```), or from our own input.

```ls``` lists all files with the current directory we are working on.

```touch``` creates a file in our working directory. NOTE: We normally follow this up with the name of the file we want to create.

```mkdir``` creates a directory within our current one. The syntax for this is the same as the touch command.

```rm``` removes a file. Again, this follows the same syntax as touch and mkdir.

```rmdir``` removes an EMPTY directory. To remove a non-empty directory, we use the rm command, followed by -r. Again, this follows the same syntax as the previous three.

```man``` is usually followed up by another command and it shows the syntax/purpose of the command, along with any flags.

```cd``` allows us to navigate between directories. We pass the command, followed by the directory we want to enter, or .. if you want to traverse up a directory.

```cp``` copies files from one place to another.

```mv``` moves files between directories. It can be also be used to rename files.

```vim``` allows us to edit text. We simply pass the command, followed by the file we want to edit.

```su``` allows you to become the super/root user.

```sudo``` excecutes commands as the super/root user.

There are more commands that can be used, however, they are more complex, so I will touch upon them in more detail as we go along. I would also highlt recommend ```man``` to see all the possible syntax for each command highlighted above.