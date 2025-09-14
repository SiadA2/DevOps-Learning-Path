## Level 0

### The Problem

The aim of this level is to simply log into the game using ssh. The host that we need to connect to 
is named "bandit.labs.overthewire.org", on port 2220. Both the username and password are bandit0.

### Clues

In this level, we are intoduced to the 'ssh' command. This command is used whenever we need to ssh
into a machine, and comes with several options and arguments. To find out more about this command and others, 
input "man {command}" into the terminal.

### Solution

To solve this level, we type the 'ssh' command into the terminal, followed by the hostname 
bandit0@bandit.labs.overthewire.org, followed by -p 2220, which specifies the port. 