## Level 6

### The Problem

The password is stored somewhere on the server and is:

Owned by user bandit7

Owned by group bandit6

33-bytes in size 

### Clues

In this level, we come across the ```find``` command. This one is pretty self-explanatory; it finds files within a directory. Type ```find --help``` to find out how to manipulate this command. We also need to find a way to discard error messages. 

### Solution

Use the ```find``` command with options ```-type f``` to specify that we are looking for a file, ```-user bandit7``` to filter for files owned by user bandit7 and ```-group bandit6``` to filter for files owned by thr group bandit6. To filter out error messages, we must follow up this command with ```2>/dev/null```, which sends error messages to the /dev/null file which automatically discards whatever is passed into it.