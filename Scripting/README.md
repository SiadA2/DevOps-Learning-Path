<h1 align="center">Scripting With Bash</h1>

<div align="center">
    <img src="https://th.bing.com/th/id/OIP.exaujd_h60-Lh2MUy363WgHaEK?w=290&h=180&c=7&r=0&o=7&dpr=1.3&pid=1.7&rm=3" alt="bash logo" width="600" />
</div>

## What is Bash?

Bash stands for the "Bourne-again Shell". It is one of several coding languages that we use to program and automoate mundane tasks. Other languages include python, Go and Javascript. Like all of the other programming languages, Bash leverages the computer's basic logic, such as the ability to loop, assign one value to another, and even understand different data types, with strings, numbers and booleans coming to mind. The sytnax of Bash is based on the language of the Linux Operating System. I'll spend the next part of this topic breaking this down in detail.

### The Shebang Line

The first component of our Bash script. Arguably the most important. This line tells our local machine how to interpret the the code in the file. It's one line in our script that looks like this:

```bash 
#!/bin/bash
```

If your Bash script isn't running as expected, make sure this line is at the top of your script before looking at anything else. That's all for the shebang line. 

### Data types

When programming, there are different ways we can express data:

- Strings - These are a concatenation of characters. They include letters, numbers, and symbols. Each string is concatenated with a set of quotation marks. For example "Hello world 1234".

- Numbers - These are exactly as the name suggests. Any number from 1 to infinity. However they aren't enclosed in a set of quotation marks. Hence, there is a differnce between 1234 and "1234". The first is a number, and the second, a string.

- Booleans - These data types only have two values. True or false. It's not displayed in scripts as much as numbers and strings, but is constantly happening in the background as the local machine evaluates commands.

### Variables

