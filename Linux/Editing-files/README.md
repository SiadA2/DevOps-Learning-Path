## Editing Files in Linux: The Vim Command

### What is Vim?

Vim is a command that allows us to edit files. The syntax for it is relatively simple. Just pass ```vim (filename)``` and you will be able to edit the text within your file. You can also pass ```vi```, short for ```vim``` too. Even better, if the file you want to edit doesn't exist, then Linux will automatically create one for you to edit. When we enter the text editor, there are some keys that we use to edit files effectively. Let's navigate through them.

### Vim Shortcuts

```↑↓←→``` arrows on the keyboard allow us to traverse through different lines/characters

```k j l h``` are the corresponding letters that can be used instead of the arrows above

```i``` allows us to enter 'insert' mode and actually add/remove text. You can tell this be looking at the bottom left of the terminal. You should see the text '-- INSERT -- '.

```esc``` allows us to escape insert mode.

```:w``` allows us to save our changes

```:q!``` force quits the text editor

```:wq!``` combines both the save and force quit function, allowing us to simultaneously save our changes and quit the editor.

```D``` deletes single characters

```d``` deletes entire lines. NOTE: You must press the key twice for it to happen

```/``` shows us where words are in the file. We simply pass the word we are looking for after the slash. We can also use the ↑↓ arrows to navigate through several instances of that word.

Again, there are more shortcuts that can be carried out with vim, but you can play around with the ones above on https://killercoda.com/playgrounds/scenario/ubuntu, as well as trying out different keys on your keyboard to find some yourself. Googling will also definitely help hone your skills with vim navigation.

Up next, is looking at how we can restrict access to our files, a security best-practice.

[Next Page: 07 - File Permissions](https://github.com/SiadA2/DevOps-Learning-Path/tree/main/Linux/File-Permissions)