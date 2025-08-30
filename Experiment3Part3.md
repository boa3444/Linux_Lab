## 1. `Users` in Linux
**A `user` in Linux is like an individual account, and each user is assigned respective privileges to access files, execute programs, and interact with the system.**

***->Types of Users:*** 
### 1.Root User (Superuser)  


Username: `root`  
`ID`: UID 0 (The user ID for root is always 0)    
`Role`: The most powerful user on the system. Has full control over the system, can modify anything, and execute any command.
Privileges: Can access, modify, and delete any file, even system files. 

### 2.Normal User

**Regular users** who have access only to their files and certain system files.  
`ID`: Assigned a unique UID starting from 1000 (typically, depending on your Linux distribution).  
`Role`: Can execute commands, edit files, and access files in their home directories.  
`Privileges`: They are restricted by permissions (e.g., they can’t access or modify files owned by the root user unless granted explicit permission).  
### 3.System User

`UID`: Typically lower than 1000.  
`Role`: Used by system services and processes. These users don't log in directly, but are associated with daemons or background services like www-data (for web servers) or mysql (for the MySQL service).  
`Privileges`: Limited access for service operation purposes. 

## 2. Groups in Linux
A **group** in Linux is a collection of users. By organizing users into groups, you can control access to files or directories that are shared among users of the same group. This makes managing permissions much easier.  

**Types of Groups:**  
`Primary Group` 
```bash 
Every user is assigned a primary group when created. This is the group that the user belongs to by default.

Example: If you create a user alice, the primary group might be alice as well, which is created automatically during user creation.
```
`Secondary Groups`  
```bash
 A user can belong to multiple groups. Secondary groups provide a way to grant additional access to specific resources.

For example, the user alice might also be part of the group developers, giving her additional access to certain files.
```
`System` Group   
```bash 
Similar to system users, system groups are used for special purposes (e.g., service groups like www-data, mysql, etc.).

These groups often don’t have interactive logins and are associated with system processes.
```

## 3. Creating and Managing Users & Groups
**Create a New `User`**  
Syntax:
```
sudo adduser username
```
**NOTE:** The primary group for the user will also be created with the same name. 

**Create a New `Group`**
Syntax:
```
sudo groupadd groupname
```

**To assign a `User` to a `Group`**
Syntax:
```
sudo usermod -aG groupname username
```

**Change User's Primary Group**  
For this, use the usermod command with the -g option.
Syntax:
```
sudo usermod -g newgroup username
```
**List All the users in the system**  
Syntax:  
```
cat /etc/passwd
```

**List All the groups in the system**  
Syntax:  
```
cat /etc/group
```
## 4. File Permissions and Groups

**These permissions control who can read, write, or execute a file.**

->The first character indicates whether it's a file (-) or a directory (d).  
->The next three characters represent the owner's permissions.  
->The next three characters represent the group's permissions.  
->The last three characters represent other users' permissions.  

Example:
```
-rwxr-xr--
```
**Changing Group Permissions**  
Modify the group associated with a file or directory.  
Syntax:
```
sudo chown :groupname file.txt
```
## 5. Default Groups and User IDs (UIDs)
**NOTE:**  
`UID 0`: Root user (root).  
`UID 1000 and higher`: Regular users.  
`GID 0`: Root group (the group associated with the root user).  
`GID > 1000`: Normal groups created by users.  

**Viewing a User’s UID and GID.**  
Syntax:
```
id username
```
This will show the UID, GID, and the groups that alice is part of.

## 6. Special Groups in Linux
`sudo` or `wheel group`: Members of this group have the ability to run commands as the root user using sudo.  
`www-data`: The web server (e.g., Apache) often runs under this user and group.  
`staff`: Common on macOS, often used to grant additional permissions to users.  
`sudo or admin`: Users in these groups have administrative privileges.  

## 7. Deleting Users and Groups
**To delete a user completely**  
Syntax:  
```
sudo deluser --remove-home username
```
**To delete a group**  
Syntax:  
```
sudo deluser --remove-home username
```

![Application of commands](images/Command4.png)

