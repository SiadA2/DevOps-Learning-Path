## Environment Variables

### What are Environment Variables in Linux?

Environment variables are variables set on your Linux machine that determines how it behaves and are written as ```$VARIABLE```. By default, there are some built-in environement variables in Linux, such as:

```$SHELL``` shows the default shell in the terminal

```$PATH``` shows the directories that the machine traverses through to execute commands

```$HOSTNAME``` gives the name of the host

```$PWD``` gives the path to your working directory

There are more built-in environment variables in Linux, but I'll leave that for you ton reseach that independently.

### Can I create my own environment variables?

Yes! You can also create your own environment variables to avoid mundane, repetitive commands. The way to do that is relatively easy:

```export $VARIABLE="value"``` 

This alone only sets your environment variable for the current session only. If you want this assignment to become permanent, you would have to input it into your configuration file, whether that's ~/.bashrc, or ~/.zshrc. Then once you've done that, input ```source ~/.bashrc``` to apply your changes. Then, once you refresh your terminal, you should have your new environment variable!

We'll round up this introductory repo with a look at aliases

[Next Page: Aliases](https://github.com/SiadA2/DevOps-Learning-Path/tree/main/Linux/Aliases)