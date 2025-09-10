# Processes

# **Learning Objectives**

By the end of this chapter, you should be able to:

- Describe what a process is and distinguish between types of processes.
- Enumerate process attributes.
- Manage processes using **ps** and **top**.
- Understand the use of load averages and other process metrics.
- Manipulate processes by putting them in background and restoring them to foreground.
- Use **at**, **cron**, and **sleep** to schedule processes in the future or pause them.

# **Defination of Process**

A **process** is simply an instance of one or more related tasks (threads) executing on your computer. It is not the same as a **program** or a **command**. A single command may actually start several processes simultaneously. Some processes are independent of each other and others are related. A failure of one process may or may not affect the others running on the system.

# **Types of Process**

| Process Type | Description | Examples |
| --- | --- | --- |
| Interactive Processes | Need to be started by a user, either at a command line or through a graphical interface such as an icon or a menu selection. | **bash**, **firefox**, **top**, **Slack**, **Libreoffice** |
| Batch Processes | Automatic processes which are scheduled from and then disconnected from the terminal. These tasks are queued and work on a FIFO (First-In, First-Out) basis. | **updatedb**, **ldconfig** |
| Daemons | Server processes that run continuously. Many are launched during system startup and then wait for a user or system request indicating that their service is required. | **httpd**, **sshd**, **libvirtd**, **cupsd** |
| Threads | Lightweight processes. These are tasks that run under the umbrella of a main process, sharing memory and other resources, but are scheduled and run by the system on an individual basis. An individual thread can end without terminating the whole process and a process can create new threads at any time. Many non-trivial programs are multi-threaded. | **dconf-service**, **gnome-terminal-server** |
| Kernel Threads | Kernel tasks that users neither start nor terminate and have little control over. These may perform actions like moving a thread from one CPU to another, or making sure input/output operations to disk are completed. | **kthreadd**, **migration**, **ksoftirqd** |

# **Process and Thread IDs**

At any given time, there are always multiple processes being executed. The operating system keeps track of them by assigning each a unique process ID (**PID**) number. The PID is used to track process state, CPU usage, memory use, precisely where resources are located in memory, and other characteristics.

New PIDs are usually assigned in ascending order as processes are born. Thus, PID 1 denotes the **init** process (system initialization process), and succeeding processes are gradually assigned higher numbers.

| ID Type | Description |
| --- | --- |
| Process ID (PID) | Unique Process ID number. |
| Parent Process ID (PPID) | Process (Parent) that started this process. If the parent dies, the PPID will refer to an adoptive parent; on modern kernels, this is kthreadd which has PPID=2. |
| Thread ID (TID) | Thread ID number. This is the same as the PID for single-threaded processes. For a multi-threaded process, each thread shares the same PID, but has a unique TID. |

# **cron**

**cron** is a time-based scheduling utility program. It can launch routine background jobs at specific times and/or days on an ongoing basis. **cron** is driven by a configuration file called **/etc/crontab** (cron table), which contains the various shell commands that need to be run at the properly scheduled times. There are both system-wide **crontab** files and individual user-based ones. Each line of a **crontab** file represents a job, and is composed of a so-called **CRON** expression, followed by a shell command to execute.

Typing **crontab -e** will open the crontab editor to edit existing jobs or to create new jobs. Each line of the **crontab** file will contain 6 fields:

| Field | Description | Values |
| --- | --- | --- |
| **MIN** | Minutes | 0 to 59 |
| **HOUR** | Hour field | 0 to 23 |
| **DOM** | Day of Month | 1-31 |
| **MON** | Month field | 1-12 |
| **DOW** | Day of Week | 0-6 (0 = Sunday) |
| **CMD** | Command | Any command to be executed |

**Examples:**

- The entry *** * * * /usr/local/bin/execute/this/script.sh** will schedule a job to execute **script.sh** every minute of every hour of every day of the month, and every month and every day in the week.
- The entry **30 08 10 06 * /home/sysadmin/full-backup** will schedule a full-backup at 8.30 a.m., 10-June, irrespective of the day of the week.

# **anacron**

While **cron** has been used in UNIX-like operating systems for decades, modern Linux distributions have moved over to a newer facility: **anacron**. This was because cron implicitly assumed the machine was always running. However, If the machine was powered off, scheduled jobs would not run. **anacron** will run the necessary jobs in a controlled and staggered manner when the system is up and running.

The key configuration file is **/etc/anacrontab**:

![anacron](https://d36ai2hkxl16us.cloudfront.net/course-uploads/e0df7fbf-a057-42af-8a1f-590912be5460/d43d1uvwbev9-anacrontab.png)

**anacron**

Note that **anacron** still makes use of the **cron** infrastructure for submitting jobs on a daily, weekly, and monthly basis, but it defers running them until opportune times when the system is actually alive.