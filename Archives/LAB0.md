# Installation method chosen:

```bash  
Oracle VirtualBox  
```   
#  Ubuntu Installation in VirtualBox

## Objective
To install and configure Ubuntu within a virtualized environment using Oracle VirtualBox, enabling safe experimentation and development without altering the host operating system.

## Tools Used
- **Host OS**: Windows 11  
- **Virtualization Software**: Oracle VirtualBox  
- **Guest OS**: Ubuntu (Latest LTS ISO image)

## Installation Steps

### 1. Virtual Machine Setup
- Created a new VM in VirtualBox and selected **Linux → Ubuntu (64-bit)** as the OS type.
- Allocated **4 GB RAM** and **20 GB virtual hard disk** (VDI, dynamically allocated) for optimal performance.

### 2. ISO Boot Configuration
- Mounted the official Ubuntu ISO file as the virtual optical disk.
- Booted the VM and initiated the Ubuntu installation process.

### 3. Ubuntu Installation
- Selected **Normal Installation** to include essential software and GUI tools.
- Configured keyboard layout, timezone, and user credentials.
- Chose **Erase disk and install Ubuntu** (within VM only) to format the virtual drive safely.

### 4. Post-Installation Enhancements
- Installed **VirtualBox Guest Additions** to enable:
  - Clipboard sharing between host and guest
  - Drag-and-drop functionality
  - Full-screen resolution support

## Outcome
Successfully deployed a fully functional Ubuntu environment within VirtualBox. The setup supports software testing, coding, and academic experimentation in a controlled, reversible environment.

## Reflection
This installation demonstrates the power of virtualization in academic and development workflows. It allows for modular experimentation, risk-free system configuration, and efficient resource utilization.  

# Installation screenshots:  
![Installation](https://github.com/boa3444/Linux_Lab/blob/e53befa0ed76f271b83cd120ac7a423b3afbdcf4/Ass_img/1.png)  
![Installation](https://github.com/boa3444/Linux_Lab/blob/e53befa0ed76f271b83cd120ac7a423b3afbdcf4/Ass_img/2.png)    
![Installation](https://github.com/boa3444/Linux_Lab/blob/e53befa0ed76f271b83cd120ac7a423b3afbdcf4/Ass_img/3.png)   
![Installation](https://github.com/boa3444/Linux_Lab/blob/e53befa0ed76f271b83cd120ac7a423b3afbdcf4/Ass_img/9.png)  

# Setup screenshots:  
![Installation](https://github.com/boa3444/Linux_Lab/blob/e53befa0ed76f271b83cd120ac7a423b3afbdcf4/Ass_img/11.png)   
![Installation](https://github.com/boa3444/Linux_Lab/blob/e53befa0ed76f271b83cd120ac7a423b3afbdcf4/Ass_img/12.png)    
![Installation](https://github.com/boa3444/Linux_Lab/blob/e53befa0ed76f271b83cd120ac7a423b3afbdcf4/Ass_img/13.png)  

# First Login:
![Installation](https://github.com/boa3444/Linux_Lab/blob/e53befa0ed76f271b83cd120ac7a423b3afbdcf4/Ass_img/6.png)  
![Installation](https://github.com/boa3444/Linux_Lab/blob/7660001da93ac7b43f1fe3c52652d8eb3419b538/Ass_img/home.png)   


# Terminal outputs of the given commands.
```bash
lsb_release -a (shows Ubuntu version).  

uname -a (kernel info).  

df -h (disk usage).  

free -m (memory usage).

```
![Installation](https://github.com/boa3444/Linux_Lab/blob/7660001da93ac7b43f1fe3c52652d8eb3419b538/Ass_img/8.png)   

# Challenges I faced during installation:
1. The ubuntu download took a lot of time since I downloaded it from web.  
2. Setting up configurations were pretty detail-oriented.  

# Extra Questions:
What are two advantages of installing Ubuntu in VirtualBox?
``` bash
1. Its is handy and i can switch between windows and linux any time.
2. It is fast and versatile.
```

What are two advantages of dual booting instead of using a VM?
``` bash
1. More superior performance.  
2. Full hardware access.  
```
