# LAB1 – Shell Programming Practice  
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

- `r` → Read (numeric value: 4)   
- `w` → Write (numeric value: 2)  
- `x` → Execute (numeric value: 1)  

![USING THESE COMMANDS IN CODE](images/command1.png)  

---

### Command : `chmod`
-used to modify access permissions for files and directories

**Basic Syntax:**

```bash
chmod 741 file.txt
chmod u+x file.txt
```

**Explanation:**

- `7` → User: read, write, execute  
- `4` → Group: read only  
- `1` → Others: execute only  
- `r` → Read (numeric value: 4)   
- `w` → Write (numeric value: 2)  
- `x` → Execute (numeric value: 1)  


# Numeric method:
![Image](images/chmod_numeric.png)  

# Symbolic method:
![Image](images/chmode_symb.png)  

# Recursive Permission Changes

-Apply changes to all files and subdirectories:

```bash
chmod -R 755 /mydir
```

- `-R` → Recursive flag

 
![Image](images/recusrion.png)  

### Command : `chown`
-Changing File Ownership

### Syntax:

```bash
chown [options] new_owner:new_group filename
```

### Example:

```bash
chown newon:group2 data.txt
```

**Explanation:**  
Assigns ownership of `data.txt` to user `newon` and group `group2`.

![Image](images/chown.png)  

---

### Applying All Concepts Together

```bash
chmod 700 project.sh         # Full access for user only  
chmod u+x,g-w project.sh     # Add execute for user, remove write for group  
chown root:admin project.sh  # Change owner to root and group to admin
```

![Image](images/final_lab5.png)  

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

![Image](https://github.com/boa3444/Linux_Lab/blob/403f04a9ede29da23a4725c007464fbe7182689b/images/echo.png)

### Command : `read`, `echo`
read → takes input from the user.
$username → retrieves the value.

```bash
#!/bin/bash

echo "Enter your name:"
read username

echo "Hello, $username! Welcome to shell scripting."
```
Code:   
![Image](https://github.com/boa3444/Linux_Lab/blob/403f04a9ede29da23a4725c007464fbe7182689b/images/echo_code.png)  
Output:  
![Image](https://github.com/boa3444/Linux_Lab/blob/403f04a9ede29da23a4725c007464fbe7182689b/images/user_input.png)  

### Conditional Statements (if-else)
-provides conditional execution, allowing different blocks of code to run based on whether a condition evaluates to true or false.

``` bash
#!/bin/bash

echo "Enter a number:"
read num

if [ $num -gt 10 ]
then
    echo "The number is greater than 10"
else
    echo "The number is 10 or smaller"
fi
```
Output:
![Image](https://github.com/boa3444/Linux_Lab/blob/403f04a9ede29da23a4725c007464fbe7182689b/images/if_else.png)  
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

## Lab6 – Shell Scripting Basics


## Extra Questions:  
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
