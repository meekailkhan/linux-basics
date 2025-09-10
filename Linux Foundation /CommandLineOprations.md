# Command Line Oprations

# **Basic Operations**

In the linux basic oprations is relate to read write and delete something which perform by some basics utilities like for read is used cd, man, ls and cat and for write is used echo and for creating is used touch and mkdir and also delete for rmdir 

# **Accessing Directories**

When we first log into a system or open a terminal, the default directory should be your home directory. You can see the exact location by typing **`echo $HOME`**. However, most Linux distributions open new graphical terminals in **`$HOME/Desktop`** instead.

| Command | Result |
| --- | --- |
| **pwd** | Displays the present working directory |
| **cd ~** or **cd** | Change to your home directory; shortcut name is **~** (tilde) |
| **cd ..** | Change to parent directory (..) |
| **cd -** | Change to previous working directory; **-** (minus) |

# Pushd and Popd

`pushd` and `popd` is also method for switching between directories and its quite more be diffrente as the work of `cd` . `pushd` and `popd` works like a stack its put the path on present working directory or can be add absolute with `pushd` like if i am gonna type `pushd /etc/log` i will be put on `/etc/log` this is work as stack i am type `popd` it’ll be pop the push path in our case which is `/etc/log` 

# **Hard Links**

The **ln** utility is used to create hard links and (with the **-s** option) soft links, also known as symbolic links or symlinks. These two kinds of links are very useful in UNIX-based operating systems.

Suppose that **file1** already exists. A hard link, called **file2**, is created with the command:

**`ln file1 file2`**

Note that two files now appear to exist. However, a closer inspection of the file listing shows that this is not quite true.

**`ls -li file1 file2`**

The **-i** option to **ls** prints out in the first column the inode number, which is a unique quantity for each file object. This field is the same for both of these files; what is really going on here is that it is only one file, but it has more than one name ****associated with it, as is indicated by the **2** that appears in the **ls** output. Thus, there was already another object linked to **file1** before the command was executed.

![Hard Links](https://d36ai2hkxl16us.cloudfront.net/course-uploads/e0df7fbf-a057-42af-8a1f-590912be5460/rt3q8bc2wdep-lnubuntu.png)

**Hard Links**

Hard links are very useful and they save space, but you have to be careful with their use, sometimes in subtle ways. For one thing, if you remove either **file1** or **file2** in the example, the inode object (and the remaining file name) will remain, which might be undesirable, as it may lead to subtle errors later if you recreate a file of that name.

If you edit one of the files, exactly what happens depends on your editor; most editors, including **vi** and **gedit**, will retain the link *by default*, but it is possible that modifying one of the names may break the link and result in the creation of two objects.

# **Soft (Symbolic) Links**

Soft (or Symbolic) links are created with the **-s** option, as in:

**`ln -s file1 file3`**

**`ls -li file1 file3`**

Notice **file3** no longer appears to be a regular file, and it clearly points to **file1** and has a different inode number.

![Soft (Symbolic) Links](https://d36ai2hkxl16us.cloudfront.net/course-uploads/e0df7fbf-a057-42af-8a1f-590912be5460/nypm7r049h7c-lnsubuntu.png)

**Soft (Symbolic) Links**

Symbolic links take no extra space on the filesystem (unless their names are very long). They are extremely convenient, as they can easily be modified to point to different places. An easy way to create a shortcut from your home directory to long pathnames is to create a symbolic link.

Unlike hard links, soft links can point to objects even on different filesystems, partitions, and/or disks and other media, which may or may not be currently available or even exist. In the case where the link does not point to a currently available or existing object, you obtain a dangling link.

# **find Options**

Another good command is **find** that’s being able to run commands on the files that match your search criteria. The **-exec** option is used for this purpose.

To find and remove all files that end with **.swp**:

**$ find -name "*.swp" -exec rm {} ';'**

The **{}** (squiggly brackets) is a placeholder that will be filled with all the file names that result from the find expression, and the preceding command will be run on each one individually.

Please note that you have to end the command with either '**;'** (including the single-quotes) or **\;**. Both forms are fine.

One can also use the **-ok** option, which behaves the same as **-exec**, except that **find** will prompt you for permission before executing the command. This makes it a good way to test your results before blindly executing any potentially dangerous commands.