# Kernel Init and Services

# **/sbin/init and Services**

Once the kernel has set up all its hardware and mounted the root filesystem, the kernel runs **/sbin/init**. This then becomes the initial process, which then starts other processes to get the system running. Most other processes on the system trace their origin ultimately to **init**; exceptions include the so-called kernel processes. These are started by the kernel directly, and their job is to manage internal operating system details.

# Process

In Linux, processes can be categorized in several ways, primarily based on their interaction with the user and their relationship with other processes:

## **1. Based on User Interaction:**

- **Foreground Processes (Interactive Processes):**These processes are launched and controlled directly from a terminal session, requiring user input or interaction. They typically occupy the terminal until completion or suspension.
- **Background Processes (Non-Interactive/Automatic Processes):**These processes run independently of user interaction and are not connected to a terminal. They are commonly used for system services, daemons, and long-running tasks.

## **2. Based on Relationship with Other Processes:**

- **Parent Process:** A process that creates other processes.
- **Child Process:** A process created by another process (its parent).
- **Orphan Process:** A child process whose parent has terminated before the child, causing the child to be re-parented to the `init` process (PID 1).
- **Zombie Process:** A process that has completed execution but still has an entry in the process table because its parent has not yet read its exit status. It consumes no CPU resources.
- **Daemon Process:** A special type of background process that typically starts at system boot and runs continuously, often providing system services or handling requests from other processes. Daemons are not associated with a controlling terminal.