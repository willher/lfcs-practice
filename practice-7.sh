# 7.  Perform the following actions:
# 	a. Make the following groups:
# 		i. employees
# 		ii. contractors
# 	b. Make a new directory called /srv/admin
# 	c. Give the group administrators full access (read/write/execute) to /srv/admins
#     d. Give the group administrators the same rights/privileges as root and allow members of the group to run all commands without a password prompt.
#     e. Create a directory /data/list and then create a file ‘list-info’. Redirect the output of the ‘ls’ manual page into the contents of the file. 

groupadd employees

groupadd contractos 

mkdir /srv/admin

groupadd adminitrators 

chmod 770 /srv/admins

chown root:administrators /srv/admin/

mkdir /data/list

man -P cat ls >> /data/list/list-info 

visudo 

NOPASSWD:ALL 