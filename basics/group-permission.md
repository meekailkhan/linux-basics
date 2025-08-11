# Groups Permissions

# `sudo useradd` – Create a User

```bash
sudo useradd -m -s /bin/bash <username>
```

- `m`: Create home directory
- `s`: Set shell (e.g. `/bin/bash`)

**Set password:**

```bash
sudo passwd <username>
```

---

# `sudo usermod -aG` – Add User to Group

```bash
sudo usermod -aG <group> <username>
```

- Common use: Give `sudo` rights

```bash
sudo usermod -aG sudo meekail
```

- `a`: Append to existing groups
- `G`: Specify group(s)

---

# `chmod` – Set File/Folder Permissions

**Format:**

```bash
chmod [who]+[permission] <file/folder>
```

### Who:

- `u`: user (owner)
- `g`: group
- `o`: others
- `a`: all (u+g+o)

### Permissions:

- `r`: read
- `w`: write
- `x`: execute

**Examples:**

```bash
chmod u+x script.sh     # Add execute for user
chmod o+rx folder       # Others can read + enter
```