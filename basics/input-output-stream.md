# Input & Output Streams

---

In Linux, every command/process deals with three default I/O streams.

---

### 1. Standard Input (`stdin`)

- File descriptor: `0`
- Default source of input: usually the **keyboard**
- You can also **redirect** input from a file or pipe another command’s output into stdin.

### Example:

```bash
grep "apple" < fruits.txt
```

This command uses `fruits.txt` as the input **instead of typing manually**.

---

### 2. Standard Output (`stdout`)

- File descriptor: `1`
- Displays **normal output** of a command
- By default, goes to the **terminal**
- Can be redirected to a file using `>`

---

### 3. Standard Error (`stderr`)

- File descriptor: `2`
- Displays **error messages**
- Can be redirected separately using `2>`

---

## Example Explained

You ran the following commands and we'll break them down step by step:

---

### Step 1: Create an error message

```bash
las

```

- You typed a non-existent command `las`
- Linux responded with a suggestion message like:
    
    ```
    Command 'las' not found, did you mean:
      command 'kas' from deb kas (4.0-1)
      ...
    
    ```
    
- This message was an **error** sent to `stderr`

---

### Step 2: Redirect stderr to a file

```bash
las 2> error.txt

```

- This redirected the **error output** into `error.txt`
- Now, `error.txt` contains the command suggestion list

---

### Step 3: Use `grep` to find a match

```bash
grep "kas" < error.txt

```

- `< error.txt` tells Linux to take **input from the file**
- `grep "kas"` searches for the line that includes `"kas"`

🟢 This uses **stdin** via file redirection

🟢 The matched line is printed to **stdout**

---

### Step 4: Redirect stdout to another file

```bash
grep "kas" < error.txt 1> grep.txt 2> /dev/null

```

- `1>` redirects **standard output** to `grep.txt`
- `2> /dev/null` discards **any errors** silently
- Final result: `grep.txt` now contains only the matched line:
    
    ```
    command 'kas' from deb kas (4.0-1)
    
    ```
    

---

## Summary of Concepts in Example

| Action | Concept Used |
| --- | --- |
| `las` | Generates `stderr` |
| `2> error.txt` | Redirects `stderr` |
| `< error.txt` | Redirects `stdin` |
| `1> grep.txt` | Redirects `stdout` |
| `2> /dev/null` | Discards `stderr` |

---

Let me know if you want to merge this with your previous notes or export the whole thing in PDF, Markdown, or as a ready-to-import Notion page.