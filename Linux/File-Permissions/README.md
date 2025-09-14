## File Permissions

### What are file permissions in Linux?

Linux, just like any Operating System, has a way in which we can determine who is allowed to read, write or execute files on your machine. This is known as file permissions. File permissions are a great tool to stay in touch with security best practices, permitting users to access only what they need and nothing more. Imagine it like giving guests to your house access to the guest bedroom only, and restricting their aceess to all other rooms.

### How do we work with file permissions?

Remember the ```ls``` command I showed you at the beginning? Well, this will come in handy! This command comes with a flag, ```-l```, such that it shows all the permissions configured on each file in your working directory. Here is an example:

<img width="511" height="165" alt="Screenshot 2025-09-13 103023" src="https://github.com/user-attachments/assets/e40f57f5-1d13-486f-9794-56a219b0ba09" />


Here, we can see three letters:

```-r-``` read

```-w-``` write 

```-x-``` execute

, repeated three times. We also see two columns, both labelled 'root'. These show the user and the group who own the file, so in this case, the files are owned by a user named 'root' and owned by a group, also named 'root'. Now, back to the first column with all the letters. Let's unpack this; the first set of 'rwx' refers to the permissions set for the user, the second refers to the permissions set for the group, and the third for everyone else. Any removed permissions are denoted by a '-', such that ```-rw-r--r--``` refers to read & write permissions for the user, but only read permissions for the group and everyone else. 

These permissions can also be denote numerically. This makes life a lot easier when changing permissions with ```chmod```, which I'll go through now.

### What is chmod?

```chmod``` is the command that we use in Linux to change the permissions of a file. Usually, only the root user has the ability to change file permissions, so this means that this command must be prefixed with ```sudo```. To understandn the full syntax of this command, we must first understand how we can numerically represent these file permissions. NOTE: we can use the letters if we want, however, this will be time-consuming, hence, the numbers in this case are strongly recommended to use.

In Linux, the file permissions are represented numerically as such:

```-r-``` equals 4

```-w-``` equals 2

```-x-``` equals 1

When we want to add these permissions to a file, we simply add their numerical representations together when passing permissions to the ```chmod``` command. For example, for each block, ```-rwx-``` would mean that we do 4+2+1, which is 7, and ```rw-``` would mean that we do 4+2, which is 6. As shown above, there must be a representation for all three blocks. 
This means that as the permissions for 'another-one.txt' in the image above are ```-rw-r--r-```, it would be represented as 6 for the first block, and 4 for both the second and third block, so 644 in total. 
If we want to change the permissions to ```-rwxrwxrwx-```, we must do ```chmod 777 another-one.txt```. 7 for the first set of 'rwx', 7 for the second, and 7 for the third. This grants everone on your machine full access to your file.

This is one of the more complex topics in Linux, so understanding this will allow you to make huge strides in your journey in Linux!

Next, is environment variables!

[Next Page: Environment Variables](https://github.com/SiadA2/DevOps-Learning-Path/tree/main/Linux/Environment-Variables)
