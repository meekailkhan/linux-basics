# File System

# **Learning Objectives**

- Explore the filesystem and its hierarchy.
- Explain the filesystem layout and the purpose of important directories.
- List common filesystem types used in Linux.
- Understand disk partitions and mounting and checking filesystems.
- Use NFS.
- Compare files and identify different file types.
- Back up and compress data.

# **Linux Partitions**

In most situations, each filesystem on a Linux system occupies a disk **partition**. (It is also possible to encapsulate a filesystem in a *loopback file* residing on another regular partition-based filesystem, but we won’t discuss that here.) Partitions help to organize the contents of disks according to the kind and use of the data contained. For example, important programs required to run the system are often kept on a separate partition (known as **root** or **/**) than the one that contains files owned by regular users of that system (**/home**). In addition, temporary files created and destroyed during the normal operation of Linux may be located on dedicated partitions. One advantage of this kind of isolation by type and variability is that when all available space on a particular partition is exhausted, the system may still operate normally. Furthermore, if data is either corrupted through error or hardware failure, or breached through a security problem,  it might be possible to confine problems to an area smaller than the entire system.