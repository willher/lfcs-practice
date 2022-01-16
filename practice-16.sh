# 16. Create a RAID 1 device named md0 using 2 disk devices of 1GB each and complete the following:
# 	a. Put a ext4 file system on it with the label of ‘md0’
# 	b. Add a spare disk of 1GB
# 	c. Mount to /raid
# 	d. Save the configuration

lsblk 

yum install mdadm 

fdisk /