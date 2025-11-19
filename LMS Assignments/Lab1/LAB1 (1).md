# LAB1 – Linux Basics 
This document summarizes commands executed from Lab3 and Lab5 in Unit-1, along with sample outputs and brief explanations.

## Lab5 – File Permissions and Ownership

### Command : `ls -la`
```bash
ls -la
Output: -rwxr-xr--
```
**Explanation:**     
- ls → Lists directory contents  
- -l → Long format: shows permissions, ownership, size, and modification date  
- -a → Includes hidden files (those starting with .  

**Code Snippet:**  
![USING THESE COMMANDS IN CODE](https://github.com/boa3444/Linux_Lab/blob/bd211f01017d54ae44f26c32e84e040abc32618f/images/command1.png)  

---

### Command : `chmod` 
-used to modify access permissions for files and directories

**Basic Syntax:**

```bash
chmod 741 file.txt
chmod u+x file.txt
```

- `r` → Read (numeric value: 4)   
- `w` → Write (numeric value: 2)  
- `x` → Execute (numeric value: 1)  

**Explanation:**

- `7` → User: read, write, execute  
- `4` → Group: read only  
- `1` → Others: execute only  


### Numeric method:
![Image](https://github.com/boa3444/Linux_Lab/blob/bd211f01017d54ae44f26c32e84e040abc32618f/images/chmod_numeric.png)  

### Symbolic method:
![Image](https://github.com/boa3444/Linux_Lab/blob/bd211f01017d54ae44f26c32e84e040abc32618f/images/chmode_symb.png)  

### Recursive Permission Changes

-Apply changes to all files and subdirectories.

```bash
chmod -R 755 /mydir
```

- `-R` → Recursive flag

**Code Snippet:**  
![Image](https://github.com/boa3444/Linux_Lab/blob/bd211f01017d54ae44f26c32e84e040abc32618f/images/recusrion.png)  

### Command : `chown`
-Changes File Ownership.
### Example:

```bash
chown newon:group2 data.txt
```

**Explanation:**  
Assigns ownership of `data.txt` to user `newon` and group `group2`.
**Code Snippet:**  
![Image](https://github.com/boa3444/Linux_Lab/blob/bd211f01017d54ae44f26c32e84e040abc32618f/images/chown.png)  

---

### Applying All Concepts Together

```bash
chmod 700 project.sh         # Full access for user only  
chmod u+x,g-w project.sh     # Add execute for user, remove write for group  
chown root:admin project.sh  # Change owner to root and group to admin
```
**Code Snippet:**  
![Image](https://github.com/boa3444/Linux_Lab/blob/bd211f01017d54ae44f26c32e84e040abc32618f/images/final_lab5.png)  

### Commands used: `nano` , `echo`  
`nano`-Create and edit shell scripts   
`echo`-prints a string in the output  

```bash
Create and Edit a file:
nano file.sh
Type:
#!/bin/bash
echo "Hello, World!"

Save and exit (CTRL+O, CTRL+X in nano).

Make it executable:
chmod +x hello.sh

Run it:
./hello.sh
```
```bash
Output:
Hello, World!
```
**Code Snippet:**  
![Image](https://github.com/boa3444/Linux_Lab/blob/403f04a9ede29da23a4725c007464fbe7182689b/images/echo.png)

### Commands used : `read`, `echo`
read → takes input from the user.  
$username → retrieves the value.  

```bash
#!/bin/bash

echo "Enter your name:"
read username

echo "Hello, $username! Welcome to shell scripting."  
```
**Code Snippet:**  
![Image](https://github.com/boa3444/Linux_Lab/blob/403f04a9ede29da23a4725c007464fbe7182689b/images/echo_code.png)  
**Output:**   
![Image](https://github.com/boa3444/Linux_Lab/blob/403f04a9ede29da23a4725c007464fbe7182689b/images/user_input.png)  

### Statements used : `if`, `else`  
-provides conditional execution, allowing different blocks of code to run based on whether a condition evaluates to true or false.

``` bash
Our code's objective:
Checks some specified conditions with if-else.
```
**Code Snippet:**    
![Image](https://github.com/boa3444/Linux_Lab/blob/403f04a9ede29da23a4725c007464fbe7182689b/images/if_else.png)   
**OUTPUT:**  
![Image](https://github.com/boa3444/Linux_Lab/blob/82fec135ec1db3de24f12e4d6f6e1b1978cb233b/images/6lab.png)   
---
## Lab5 – PRACTICE  
# 🧪 Practice Experiment – Creating Users and Groups

This section documents the commands executed during the practice experiment, along with brief explanations and screenshots.  
**Procedure:**
```bash
1. Create a New User  
2. Create a New Group  
3. Add User to the Group
4. Create a File
5. Assign Ownership to User and Group
6. Verify Ownership
```  
**Code Snippet:**    
![CODE](https://github.com/boa3444/Linux_Lab/blob/403f04a9ede29da23a4725c007464fbe7182689b/images/practice5.png)      
**Explanation:**
```bash
sudo useradd -m newuser
-Creates a new user `newuser` and sets up a home directory at `/home/newuser`.

sudo groupadd newgroup
-Creates a new group named `newgroup`.

sudo usermod -aG newgroup newuser
-Adds `newuser` to `newgroup` without removing them from existing groups.

touch testfile.txt
-Creates an empty file named `testfile.txt`.

sudo chown newuser:newgroup testfile.txt
-Assign ownership of the file to newuser and newgroup

ls -l testfile.txt
-Verify Ownership
```
---
## Lab6 – Shell Scripting Basics
### Commands include : Accessing Variables, Taking a user's input  
**To access a variable in shell scripting we prefix its name with a dollar sign**  
**We use `read` command to take a user's input**  

```bash
Code
#!/bin/bash
echo "hi"
name="Divyanshi"
age=17
echo "My name is $name and I am $age years old."
echo $HOME
echo "Whats your fav food:"
read food
echo "My fav food is $food"
```
---
**Code Snippet:**    
![Code snippet](https://github.com/boa3444/Linux_Lab/blob/82fec135ec1db3de24f12e4d6f6e1b1978cb233b/images/echo_code.png)   
**OUTPUT:**  
![output](https://github.com/boa3444/Linux_Lab/blob/82fec135ec1db3de24f12e4d6f6e1b1978cb233b/images/user_input.png)  

### Command : `for` loop  
-control flow statement used to iterate over a list of items and execute a block of commands for each item.   
**Code Snippet:**  
Objective: Iterate over an array with for loop.    
![Code snippet](https://github.com/boa3444/Linux_Lab/blob/82fec135ec1db3de24f12e4d6f6e1b1978cb233b/images/for_loop.png)

### Command : `while` loop 
-a while loop repeatedly executes a block of commands as long as a specified condition remains true.  
**Code Snippet:**  
Objective: Looping through an array by adding +1 a variable in each iteration.  
![Image](https://github.com/boa3444/Linux_Lab/blob/82fec135ec1db3de24f12e4d6f6e1b1978cb233b/images/while_loop.png)  

### Command : `until` loop 
-The until loop in shell scripting is a control flow statement that repeatedly executes a block of commands as long as a given condition remains false.  
**Code Snippet:**  
Objective: A chosen element from an array is getting subtracted till it becomes equal to another chosen element from the same array.  
![Image](https://github.com/boa3444/Linux_Lab/blob/82fec135ec1db3de24f12e4d6f6e1b1978cb233b/images/until_loop.png)  

### Commands include: Creating funtions
Objective of this code: To say bye to the given input.   
**Code Snippet:**  
![Code snippet](https://github.com/boa3444/Linux_Lab/blob/82fec135ec1db3de24f12e4d6f6e1b1978cb233b/images/function.png)    

### Commands include: Iterating over the elements of an array named `fruits`
**Code Snippet:**    
![](https://github.com/boa3444/Linux_Lab/blob/82fec135ec1db3de24f12e4d6f6e1b1978cb233b/images/for_loop.png)  

### Some command line arguments:
- Accessing the arguments passed by user in command line.  

**Code snippet:**
![](https://github.com/boa3444/Linux_Lab/blob/5a24ddc6585b32eee5ba3b41267698862a9c8aa2/images/com_line.png)  

### Useful commands: `date`, `whoami`, `ls`, `cat`
![](https://github.com/boa3444/Linux_Lab/blob/5a24ddc6585b32eee5ba3b41267698862a9c8aa2/images/userful.png)  


# Extra Questions:  
1. What is the Difference Between `chmod` and `chown`?  

| Command   | Function                                 | Affects                       |
|-----------|------------------------------------------|-------------------------------|
| `chmod`   | Modifies file or directory permissions   | Who can read/write/execute    |
| `chown`   | Changes file or directory ownership      | Who owns the file and group   |

- `chmod` controls **access rights** (read, write, execute).  
- `chown` controls **ownership** (user and group).  

---

2. How to Check Current Directory and User?  

--> To check your current working directory:  

```bash
pwd
```

**Output:** Displays the full path of your present location in the filesystem.  

--> To check your current user:  

```bash
whoami
```

**Output:** Displays the username of the currently logged-in user.  

---
