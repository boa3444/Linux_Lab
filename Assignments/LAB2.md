# LAB2 : Script Execution & Explanation
Objective: Understand how existing scripts in repo work  

## Script that I chose : `array_length.sh`
**Line-by-Line EXPLANATION:**  

```bash
#!/bin/bash
```
- **Shebang line**: Specifies that the script should be run using the Bash shell.

```bash
number=(0 9 8 7 6)
```
- **Array declaration**: Creates an indexed array named `number` with five integer elements.

```bash
length="${#number[@]}"
```
- **Length calculation and output**:  
  - `${number[@]}` accesses all elements of the array.  
  - `${#number[@]}` returns the total number of elements.
    
```bash
echo "$length"
```
- **Printing the variable `length`**  
  - `echo` prints the result: `5`.

---
**CODE SNIPPET (with output):**
![](https://github.com/boa3444/Linux_Lab/blob/eb55ee990f65321e00fdc16b3bf4fa3a56544406/images/arrays_length.png)  
---
## Script that I chose : `print_with_range.sh`
**Line-by-Line EXPLANATION:** 

```bash
#!/bin/bash
```
- **Shebang line**: Tells the system to execute the script using the Bash shell.

```bash
for i in {0..7}
```
- **Loop initialization**: Starts a `for` loop that iterates over the numbers 1 through 5 using brace expansion `{1..5}`.

```bash
do
```
- **Loop body begins**: Marks the start of the commands to be executed in each iteration.

```bash
    echo "Number: $i"
```
- **Output statement**: Prints the current value of `i` with the label `"Count:"`.

```bash
done
```
- **Loop body ends**: Signals the end of the `for` loop.

---
**CODE SNIPPET (with output):**
![](https://github.com/boa3444/Linux_Lab/blob/20afd810141bdb937b01b135367083a318b95bca/images/array_range.png)

---

## Extra Questions:
1.What is the purpose of #!/bin/bash at the top of a script?  
Answer:   
 -The line `#!/bin/bash` is called a **shebang**.   
 -It tells the system to execute the script using the Bash shell, ensuring consistent behavior across environments.  

 2. How do you make a script executable?  
Answer:  
```bash
Use the `chmod` command to give execute permission:
```bash
chmod +x scriptname.sh
```
---
