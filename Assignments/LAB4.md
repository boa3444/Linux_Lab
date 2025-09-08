# LAB 4 – File & Backup Automation

## Objective
Automate file backup for `.txt` files with timestamped filenames.

## Script: `backup.sh`
- Creates a `backup/` folder if missing.
- Finds all `.txt` files in current directory.
- Copies each file into `backup/` with timestamp suffix.

## Example Run
```bash
$ touch notes.txt report.txt
$ ./backup.sh
Backup completed at 20240908_232900
$ ls backup/
notes_20240908_232900.txt  report_20240908_232900.txt
```

**CODE OUTPUT:**  
![](https://github.com/boa3444/Linux_Lab/blob/a66349f1b01ae84e095b572b3cc732615f1060c0/images/starter.png)  

## Line by Line Explanation:

### Terminal Session with Commentary

```bash
$ touch notes.txt report.txt
```

➡ Creates two empty files named `notes.txt` and `report.txt`. These are placeholder files to demonstrate the backup process.

```bash
$ ./backup.sh
Backup completed at 20240908_232900
```

➡ Runs the `backup.sh` script.  
- The script captures the current timestamp (`20240908_232900`).  
- It creates a `backup/` directory if it doesn't exist.  
- It copies each file (`notes.txt`, `report.txt`) into the `backup/` directory.  
- Each copy is renamed to include the timestamp.  
- The message confirms the backup was successful and shows the timestamp used.

```bash
$ ls backup/
notes_20240908_232900.txt  report_20240908_232900.txt
```

➡ Lists the contents of the `backup/` directory.  
- Shows the two backed-up files, renamed with the timestamp suffix.  
- Confirms that both files were successfully copied and renamed.

---

# Extra Questions:

## Q1. What is the difference between cp, mv, and rsync?

| Command | Function       | Notes                        |
|---------|----------------|------------------------------|
| `cp`    | Copy files     | Keeps original intact        |
| `mv`    | Move/Rename    | Deletes original after move  |
| `rsync` | Sync files     | Skips unchanged, supports remote & incremental copy |

---

## Q2. How can you schedule scripts to run automatically?

### Linux (`cron`)
```bash
crontab -e
# Run daily at 8 AM
0 8 * * * /path/to/script.sh
```

---

# Appendix: Raw Markdown Source

To ensure reproducibility and peer learning, the full Markdown source of this lab report is included below.

````markdown
# LAB 4 – File & Backup Automation

## Objective
Automate file backup for `.txt` files with timestamped filenames.

## Script: `backup.sh`
- Creates a `backup/` folder if missing.
- Finds all `.txt` files in current directory.
- Copies each file into `backup/` with timestamp suffix.

## Example Run
```bash
$ touch notes.txt report.txt
$ ./backup.sh
Backup completed at 20240908_232900
$ ls backup/
notes_20240908_232900.txt  report_20240908_232900.txt
```

**CODE OUTPUT:**  
![](https://github.com/boa3444/Linux_Lab/blob/a66349f1b01ae84e094b472b3cc732614f1060c0/images/starter.png)

## Line by Line Explanation:

### Terminal Session with Commentary

```bash
$ touch notes.txt report.txt
```

➡ Creates two empty files named `notes.txt` and `report.txt`. These are placeholder files to demonstrate the backup process.

```bash
$ ./backup.sh
Backup completed at 20240908_232900
```

➡ Runs the `backup.sh` script.  
- The script captures the current timestamp (`20240908_232900`).  
- It creates a `backup/` directory if it doesn't exist.  
- It copies each file (`notes.txt`, `report.txt`) into the `backup/` directory.  
- Each copy is renamed to include the timestamp.  
- The message confirms the backup was successful and shows the timestamp used.

```bash
$ ls backup/
notes_20240908_232900.txt  report_20240908_232900.txt
```

➡ Lists the contents of the `backup/` directory.  
- Shows the two backed-up files, renamed with the timestamp suffix.  
- Confirms that both files were successfully copied and renamed.

## Q1. What is the difference between cp, mv, and rsync?

| Command | Function       | Notes                        |
|---------|----------------|------------------------------|
| `cp`    | Copy files     | Keeps original intact        |
| `mv`    | Move/Rename    | Deletes original after move  |
| `rsync` | Sync files     | Skips unchanged, supports remote & incremental copy |

## Q2. How can you schedule scripts to run automatically?

### Linux (`cron`)
```bash
crontab -e
# Run daily at 8 AM
0 8 * * * /path/to/script.sh
```
````

---

