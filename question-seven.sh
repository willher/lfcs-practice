# 7.  Perform the following actions:
# 	a. Make the following groups:
# 		i. employees
# 		ii. contractors
# 	b. Make a new directory called /srv/admin
# 	c. Give the group administrators full access (read/write/execute) to /srv/admins
#     d. Give the group administrators the same rights/privileges as root and allow members of the group to run all commands without a password prompt.
#     e. Create a directory /data/list and then create a file ‘list-info’. Redirect the output of the ‘ls’ manual page into the contents of the file. 

groupadd employees

groupadd contractors

groupadd administrators

#creates all (3) groups asked for by the question ***Question: is the administrators group implied?***

mkdir /srv/admins

chown root:administrators/srv/admins 

chmod 770 /srv/admins 

#this creates the directories and gives it the permissions outlined

visudo

#this will open a vim editor with the sudoers file

/wheel to search for the 'wheel' in group permissions

administrators ALL=(ALL) NOPASSWD:ALL

#this line will follow the wheel example except include the NOPASSWD:ALL instead of just ALL

useradd -G administrators testUserAdmin

su testUserAdmin

sudo -v 

#this fill verify your changes to sudoers worked

mkdir /data 

mkdir /data/list 

man -P cat ls >> /data/lists/list-info 

cat /data/lists/list-info

#this will create the directory and file from part e