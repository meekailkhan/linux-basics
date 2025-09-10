# Shell Scripting

## 🔹 1. Predictable Filenames (Old Style `/tmp/myfile.$$`)

Agar script `/tmp/myfile.$$` jaisi predictable file banata hai:

- Attacker guess kar sakta hai file ka naam.
- Us file ke jagah **symbolic link** bana de kisi important system file (e.g. `/etc/passwd`) ke liye.
- Jab script us file me data likhega → actually attacker ke link ke through **system file overwrite** ho jayegi.

👉 Example:

```bash
echo "temporary data" > /tmp/myfile.12345
```

Agar hacker ne pehle hi:

```bash
ln -s /etc/passwd /tmp/myfile.12345
```

banaya ho, to `/etc/passwd` overwrite ho jayega 🚨