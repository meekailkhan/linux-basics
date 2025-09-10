# GNU Info

# **The GNU Info System**

This is the GNU project's standard documentation format, which it prefers as an alternative to **man**. The Info System is basically free-form, and supports linked subsections.

Functionally, **info** resembles man in many ways. However, topics are connected using links (even though its design predates the World Wide Web). Information can be viewed through either a command line interface, a graphical help utility, printed or viewed online.

While the info interface may seem to be rather outdated compared to modern help systems (even man), it often is the only easy source to get more complete information.  For example, if you compare the output on any simple command, you may find much more detail in the info page (try **man ls** vs **info ls** and count the lines, for example)

# **Using info from the Command Line**

Typing **info** with no arguments in a terminal window displays an index of available topics. You can browse through the topic list using the regular movement keys: arrows, **Page Up**, and **Page Down**.

You can view help for a particular topic by typing **info <topic name>**. The system then searches for the topic in all available **info** files.

Some useful keys are: **q** to quit, **h** for help, and **Enter** to select a menu item.

![info](https://d36ai2hkxl16us.cloudfront.net/course-uploads/e0df7fbf-a057-42af-8a1f-590912be5460/9wyq9g2q54x6-infoubuntu.png)

# **info Page Structure**

The topic which you view in an info page is called a **node**. The table lists the basic keystrokes for moving between nodes.

Nodes are essentially sections and subsections in the documentation. You can move between nodes or view each node sequentially. Each node may contain menus and linked subtopics, or items.

Items function like browser links and are identified by an asterisk (*****) at the beginning of the item name. Named items (outside a menu) are identified with double-colons (**::**) at the end of the item name. Items can refer to other nodes within the file or to other files.

| Key | Function |
| --- | --- |
| **n** | Go to the next node |
| **p** | Go to the previous node |
| **u** | Move one node up in the index |