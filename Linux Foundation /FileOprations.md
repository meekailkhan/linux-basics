# File Oprations

# **Archiving and Compressing Data Using tar**

Historically, **tar** stood for "**t**ape **ar**chive" and was used to archive files to a magnetic tape. It allows you to create or extract files from an archive file, often called a **tarball**. At the same time, you can optionally compress while creating the archive, and decompress while extracting its contents.

| Command | Usage |
| --- | --- |
| **tar xvf mydir.tar** | Extract all the files in **mydir.tar** into the **mydir** directory. |
| **tar zcvf mydir.tar.gz mydir** | Create the archive and compress with **gzip**. |
| **tar jcvf mydir.tar.bz2 mydir** | Create the archive and compress with **bz2**. |
| **tar Jcvf mydir.tar.xz mydir** | Create the archive and compress with **xz**. |
| **tar xvf mydir.tar.gz** | Extract all the files in **mydir.tar.gz** into the **mydir** directory.***NOTE**: You do **not** have to tell **tar** it is in **gzip** format.* |

Use of a dash (“-”) before options is often done, although it is usually unnecessary, as in **tar -xvf mydir.tar**.