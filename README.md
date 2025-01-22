# Linux Configurations

## First installs

```
# updates
sudo apt-get update && sudo apt-get upgrade && sudo apt-get autoremove
# list to install
sudo apt install zsh fzf neovim ranger
# list to remove                                   
sudo apt remove thunderbird                                            
```

## GitHub automated initial configuration
```
git config --global user.name "yag0x1"
git config --global user.email "yagx01@gmail.com"
cd ~/.ssh
ssh-keygen -o -t rsa -C "yagx01@gmail.com"
cat id_rsa.pub
```
Put the key in: https://github.com/settings/keys

## Autocomplete and fzf History Search in zsh
```
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/joshskidmore/zsh-fzf-history-search ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-fzf-history-search
```
Put in .zshrc :
```
plugins=(
git
zsh-syntax-highlighting
zsh-autosuggestions
zsh-fzf-history-search
)
```
## Fira Code Nerd Font
```
wget -P ~/.local/share/fonts https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/FiraCode.zip \
&& cd ~/.local/share/fonts \
&& unzip FiraCode.zip \
&& rm FiraCode.zip \
&& fc-cache -fv
```

## Catppuccin theme for tmux
```
mkdir -p ~/.config/tmux/plugins/catppuccin
git clone https://github.com/catppuccin/tmux.git ~/.config/tmux/plugins/catppuccin/tmux
touch ~/.config/tmux/tmux.conf
```
Put in tmux.conf : 
```
run ~/.config/tmux/plugins/catppuccin/tmux/catppuccin.tmux
```
```
tmux source ~/.config/tmux/tmux.conf
```

## Basic Linux Commands

```
ls                                   : Lists files, similar to DOS dir
Common attributes:
-a = shows hidden files
-l = shows bytes, permissions, directory, etc.
Note: in ls, file names in *X systems (Unix, Linux, etc.) don’t need to be only 8 letters long. So, if you want to list files starting with u, for example, use ls u* and see the result.
* replaces any set of characters
? replaces single characters

rm                                   : removes files, format: rm (file1) (file2) (file3) ...
Example: rm myfile.doc / rm readme.txt manual.html win95.w95

cp                                   : copies files, format: cp (file1) (directory)
Example: cp manual.txt /home/manual

cat                                  : shows the content of the file, similar to 'type' in DOS

more                                 : displays the content of a file page by page, same as in DOS Example: ls|more

pwd                                  : displays the current directory (where you are)

touch                                : used to create files

rmdir                                : deletes directory Example: rmdir /directory. If the directory is full, use rm with the -r attribute

mkdir                                : creates directory Example: mkdir /directory

clear                                : clears the screen, similar to 'cls' in DOS

who                                  : shows who is logged in on the machine at the moment

whoami                               : shows who you are - useful when you forget what login you used... ;)

finger                               : shows the user associated with a specific key

df                                   : shows used space, free space, and the capacity of the hard disk partitions

free                                 : displays free memory, used memory, and RAM buffers

exit                                 : exits the current session

tar                                  : (tape archive) backup generation program

tar -c                               : creates backup

tar -x                               : restores backup

tar -v                               : lists each file processed

tar -t                               : lists the content of a backup                                   

tar zxpvf (file_name)                : to extract "tagged" files (.tar.gz, .tgz, etc.)
gunzip -d (file_name)                : to extract "gzipped" files (.gz)

chmod                                : changes file/directory permissions

chown                                : changes file/directory ownership

awk                                  : searches for a pattern from a file. Includes a built-in programming language.

bdiff                                : compares two large files.

bfs                                  : searches for a large file.

cal                                  : displays a calendar.

cat                                  : concatenates and prints files.

cc                                   : C compiler.

cd                                   : changes directory.

cd ..                                : parent directory

chgrp                                : changes the group ownership of a file.

cmp                                  : compares two files; shows the location (line and byte) of the first difference between them.

comm                                 : compares two files to determine which lines are common between them.

cu                                   : call another UNIX system.

date                                 : returns the date and time.

diff                                 : displays the differences between two files or directories.

diff3                                : displays the differences between three files or directories.

du                                   : file system usage report.

echo                                 : displays its arguments.

ed                                   : text editor.

ex                                   : text editor.

expr                                 : evaluates its arguments, usually as a mathematical expression.

f77                                  : FORTRAN compiler.

find                                 : locates files with specific characteristics.

format                               : initializes a floppy disk.

grep                                 : searches for a pattern from a file. (see awk)

help                                 : shell help

kill                                 : terminates a process.

ln                                   : used to link files.

lpr                                  : sends a file to the printer queue.

ls                                   : displays information about one or more files.

mail                                 : used to receive or send emails.

nroff                                : used for text formatting.

ps                                   : displays a process status.

sleep                                : causes a process to become inactive for a specified time.

sort                                 : sorts and merges one or more files.

spell                                : checks for spelling errors in a file.

split                                : splits a file.

stty                                 : displays or sets terminal parameters.

tail                                 : displays the end of a file.

tset                                 : sets terminal type.

umask                                : allows the user to specify new file creation mask.

uniq                                 : compares two files. Finds and displays lines that are unique in a file.

uucp                                 : UNIX-to-UNIX execution

vi                                   : full-screen editor.

wc                                   : displays details about file size.

who                                  : information about who is online.

write                                : used to send messages to another user.

history                              : shows command history

!n                                   : selects the nth command in the history list


```

## Useful Linux Commands

```
Starting & Stopping:
shutdown -h now                      : Shutdown the system now and do not reboot
halt                                 : Stop all processes - same as above
shutdown -r 5                        : Shutdown the system in 5 minutes and reboot
shutdown -r now                      : Shutdown the system now and reboot
reboot                               : Stop all processes and then reboot - same as above
startx                               : Start the X system

Accessing & mounting file systems:

mount -t iso9660 /dev/cdrom          : Mount the device cdrom and 
/mnt/cdrom                           : call it cdrom under the /mnt directory

mount -t msdos /dev/hdd              : Mount hard disk “d” as a msdos file system and
/mnt/ddrive                          : call it ddrive under the /mnt directory

mount -t vfat /dev/hda1              : Mount hard disk “a” as a VFAT file system and
/mnt/cdrive                          : call it cdrive under the /mnt directory
 
umount /mnt/cdrom                    : Unmount the cdrom

Finding files and text within files:

find / -name fname                   : Starting with the root directory, look for the file called fname
find / -name ”*fname*”               : Starting with the root directory, look for the file containing the string fname

locate missingfilename               : Mount hard disk “d” as a msdos file system and
updatedb                             : call it ddrive under the /mnt directory

which missingfilename                : Mount hard disk “a” as a VFAT file system and
grep textstringtofind                : Starting with the directory called dir
 
/dir                                 : list all files containing textstringtofind

xvidtune                             : Run the X graphics tuning utility
XF86Setup                            : Run the X configuration menu with automatic probing of graphics cards
Xconfigurator                        : Run another X configuration menu with automatic probing of graphics cards
xf86config                           : Run a text based X configuration menu

ls -l                                : List files in current directory using long format
ls -F                                : List files in current directory and indicate the file type
ls -laC                              : List all files in current directory in long format and display in columns

/sbin/e2fsck hda5                    : Execute the filesystem check utility on partition hda5
fdformat /dev/fd0H1440               : Format the floppy disk in device fd0

tar -cMf /dev/fd0                    : Backup the contents of the current directory and subdirectories to multiple floppy disks
tail -f /var/log/messages            : Display the last 10 lines of the system log.
cat /var/log/dmesg                   : Display the file containing the boot time messages - useful for locating problems. Alternatively, use the dmesg command.

*                                    : wildcard - represents everything. eg. cp from/* to will copy all files in the from directory to the to directory

?                                    : Single character wildcard. eg. cp config.? /configs will copy all files beginning with the name config. in the current directory to the directory named configs.

[xyz]                                : Choice of character wildcards. eg. ls [xyz]* will list all files in the current directory starting with the letter x, y, or z.

linux single                         : At the lilo prompt, start in single user mode. This is useful if you have forgotten your password. Boot in single user mode, then run the passwd command.
ps                                   : List current processes

/etc/profile                         : System wide environment variables for all users.
/etc/fstab                           : List of devices and their associated mount points. Edit this file to add cdroms, DOS partitions and floppy drives at startup.

/etc/motd                            : Message of the day broadcast to all users at login
etc/rc.d/rc.local                    : Bash script that is executed at the end of login process. Similar to autoexec.bat in DOS


/etc/HOSTNAME                        : Conatins full hostname including domain.
/etc/cron.*                          : There are 4 directories that automatically execute all scripts within the directory at intervals of hour, day, week or month.
/etc/hosts                           : A list of all know host names and IP addresses on the machine.
/etc/httpd/conf                      : Paramters for the Apache web server
/etc/inittab                         : Specifies the run level that the machine should boot into.
/etc/resolv.conf                     : Defines IP addresses of DNS servers.
/etc/smb.conf                        : Config file for the SAMBA server. Allows file and print sharing with Microsoft clients.

~/.Xdefaults                         : Define configuration for some X-applications. ~ refers to user’s home directory.
/etc/X11/XF86Config                  : Config file for X-Windows

rm name                              : Remove a file or directory called name
rm -rf name                          : Kill off an entire directory and all it’s includes files and subdirectories
cp filename /home/dirname            : Copy the file called filename to the /home/dirname directory
mv filename /home/dirname            : Move the file called filename to the /home/dirname directory 
cat filetoview                       : Display the file called filetoview
man -k keyword                       : Display man pages containing keyword
more filetoview                      : Display the file called filetoview one page at a time, proceed to next page using the spacebar
head filetoview                      : Display the first 10 lines of the file called filetoview
head -20 filetoview                  : Display the first 20 lines of the file called filetoview
tail filetoview                      : Display the last 10 lines of the file called filetoview
tail -20 filetoview                  : Display the last 20 lines of the file called filetoview

rpm -ihv name.rpm                    : Install the rpm package called name

rpm -Uhv name.rpm                    : Upgrade the rpm package called name
rpm -e package                       : Delete the rpm package called package
rpm -l package                       : List the files in the sudo pacman -S fishpackage called package
rpm -ql package                      : List the files and state the installed version of the package called package
rpm -i --force package               : Reinstall the rpm package called name having deleted parts of it (not deleting using rpm -e)

tar -zxvf archive.tar.gz or
tar -zxvf archive.tgz                : Decompress the files contained in the zipped and tarred archive called archive
./configure                          : Execute the script preparing the installed files for compiling

adduser accountname                  : Create a new user call accountname
passwd accountname                   : Give accountname a new password
su                                   : Log in as superuser from current login
exit                                 : Stop being superuser and revert to normal user

ifconfig                             : List ip addresses for all devices on the machine

apropos subject                      : List manual pages for subject
usermount                            : Executes graphical application for mounting and unmounting file systems

/etc/rc.d/init.d/lpd start           : Start the print daemon
/etc/rc.d/init.d/lpd stop            : Stop the print daemon
/etc/rc.d/init.d/lpd status          : Display status of the print daemon
lpq                                  : Display jobs in print queue
lprm                                 : Remove jobs from queue
lpr                                  : Print a file
lpc                                  : Printer control tool
man subject | lpr                    : Print the manual page called subject as plain text
man -t subject | lpr                 : Print the manual page called subject as Postscript output
printtool                            : Start X printer setup interface

```

