# Pipe ( | ) In Linux

The **pipe operator (`|`)** is used in Linux to **connect the output of one command to the input of another**.

It allows you to build **command chains**, where the output of one becomes the input of the next — without using intermediate files.

---

### Basic Syntax

```bash
command1 | command2
```

- `command1`: runs first and sends its output to `stdout`
- `command2`: reads that output as its `stdin` input

---

### Example 1: Filter `ls` with `grep`

```bash
ls | grep "txt"
```

- Lists files in the current directory
- Then filters only those containing `"txt"` in their name

---

### Example 2: Count lines in a file

```bash
cat file.txt | wc -l
```

- `cat` prints the file contents
- `wc -l` counts the number of lines

---

### Example 3: Sort and remove duplicates

```bash
cat names.txt | sort | uniq
```

- `sort`: sorts the names
- `uniq`: removes duplicate adjacent lines (works best after sorting)

---

### When and Why to Use Pipes

- To create **efficient workflows**
- To **avoid creating temporary files**
- To **combine small utilities** into more powerful commands
- To **process data step-by-step** in a readable way

---

### Real-World Example: View top 5 largest files

```bash
du -ah . | sort -rh | head -n 5
```

- `du -ah .`: shows size of files/folders
- `sort -rh`: sorts by size, in reverse order
- `head -n 5`: shows the top 5

---

### Notes

- Every command in the pipe should support `stdin` or `stdout`
- You can **chain multiple commands** using more than one pipe

Example:

```bash
px aux | grep "postgres" | wc -l
```

Counts the number of proccess running on sytem which is relate to postgres.