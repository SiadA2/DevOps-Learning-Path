## Aliases

### What are aliases?

Aliases are names that you can assign to functions. They're essentially a way of building you own custom commands using the bash language. Think of them as nicknames or shortcuts in your terminal and like environment variables, they're a great way to avoid repetitive, boring commands and make your work much more efficient. 

### How do we create aliases?

Simple. We use the ```alias``` comand followed by the name of our alias. We then assign it to a command of our choice. Have a look at this alias as an example:

```alias greeting='echo "Hello User"'```

This gives an alias named 'greeting' to the command ```echo "Hello User"```, so instead of passing this command everytime, I can just type 'greeting', and it will print 'Hello User' to the terminal.

These aliases only apply to a current session however, and like environment variables, you would have to set them in the ~/.bashrc or ~/.zshrc confuguration file to make them permanent. And don't forget to source the file!