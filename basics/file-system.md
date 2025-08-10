# Ext4

Ext4 is file system which is mostly use in linux system it is the update and scalable version of ext3 which was use in 2000 and by the way ext4 introduce in 2008.where ext3 support only 32000 sub-directories in a single directory its support 16TB largest file and

ext4 is using block mapping scheme to store data. whenever which save any file our system break in to block and each block something size is 4kb

# Directories

- ### Root
  root directory is the home directory of root user only root user can reac,write and execute from this directory user permission of this directory is 700 mean only owner can react write and execute expect superuser (root)
- ### home
  this is directory where all users of system is located and they can’t manupullat each of them directories and files and media
- ### bin
  bin simply mean is binaries this directory is contain our all binary files which are available for everyone to execute like ls, cat, curl and so all
- ### sbin
  sbin is simply stand for system binaries and for execute this binaries you must be a root user rather then system will not allowed you to execute these binaries journally these binaries is used for major task like system changes and etc.
- ### proc
  proc is stand for process and as the name of this directory it’s contain all about our process we can say it’s contain all the name of which is executing in ram
- ### boot
  boot directory contain every thing about booting system which is user by kernel at initial face of system on
- ### dev
  dev is simply stand for device files and in this directory we can see a new type of files which is character and block files
- ### mnt
  mnt is stand for mount and this directory is contain all mounted devices
- ### sys
  sys is stand for system and this directory provide every thing about hardware information our system
- ### lib
  lib is stand for library and in this directory we have all our library which is user by other application just like a dependencie  

- ### tmp
  tmp is stand for temporary file these file are temporary create for on demand need for task once task is complete all files of tmp is deleted autometically
- ### var
  var stand for variable files and in this directory there are several directory and file which are change time to time and one of the directory is log

- ### log      
  log is the directory which is contain log of crashes of currently running appliction and also other logs
