# Experiment3 Part 2
## 1. **`sudo` – Run Commands as Administrator**

`sudo` (SuperUser DO) allows you to run commands with root privileges.

```bash
sudo command
```

Example:

```bash
sudo apt update      
```


## 2. **User Management (Linux/macOS only)**

### `adduser` 
Create a New User

```bash
sudo adduser newusername
```
### `passwd`  
Change User Password

```bash
sudo passwd newusername
```

---

### `usermod` 
Modify User Account

Example:

```bash
sudo usermod -aG sudo alice     # Give 'alice' sudo access
```

### `deluser` 
Delete a User permanently

```bash
Syntax : sudo deluser username
```

To remove the user's home directory:

```bash
sudo deluser --remove-home username
```

---

### 3. **File Permissions with `chmod` and `chown`**

### `chmod` – Change File Permissions

Basic syntax:

```bash
chmod [permissions] file
```

#### Common Usage:

```bash
chmod 755 data.txt


Example:

```bash
chmod 644 file.txt

```

---

### `chown` – Change File Owner

```bash
sudo chown user:group file
```

Example:

```bash
sudo chown newone:mygroup myfile.txt
```

---

##  4. **Disk Usage & System Info**

### `df` – Disk Space Usage

```bash
df -h
```

Shows mounted partitions with human-readable sizes.

---

### `du` – Directory Size

```bash
du -sh folder_name
```

---

### `top` – Live System Processes

```bash
top
```


Alternative: `htop` (better UI, needs to be installed)

---

## 5. **Networking Commands**

### 🌐 `ping` – Check Network Connectivity

```bash
ping google.com
```

Press `CTRL + C` to stop.

---

### `ifconfig` or `ip a` – Show IP Address & Network Info

```bash
ip a
```

```bash
ifconfig   # May require sudo or installation
```

---

###  `netstat` – Show Active Network Connections

```bash
netstat -tuln
```

Or use:

```bash
ss -tuln   # Faster alternative
```

---

##  6. **Package Management**

### For **Ubuntu/Debian (APT)**:

```bash
sudo apt update            # Refresh package list
sudo apt upgrade           # Upgrade installed packages
sudo apt install git       # Install a package
sudo apt remove git        # Uninstall a package
```

---

### For **macOS (Homebrew)**:

```bash
brew install git
```

---

##  7. **Process Management**

### 🔎 `ps` – Show Running Processes

```bash
ps aux
```

###  `kill` – Kill a Process

```bash
kill <PID>
```

Example:

```bash
kill 12345
```

Force kill:

```bash
kill -9 12345
```

---

## 8. **Shutdown and Reboot**

```bash
sudo shutdown now        # Immediate shutdown
sudo shutdown -r now     # Immediate reboot
```

