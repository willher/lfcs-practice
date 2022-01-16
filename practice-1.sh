# 1. Attach a 10gb disk for additional storage and perform the following tasks:
# 	a. Create two partitions, each with 2GB of storage
# 	b. Create a volume group name ‘vg01’ from the two partitions
# 	c. Create a logical volume named ‘lv01’ with the following attributes
# 		i. 2GB of storage from vg01
# 		ii. Format it with the ext3 file system
# 		iii. Give it a label ‘lv01’
# 		iv. Mount it persistently to /mnt 

lsblk 

fdisk /dev/sda 

fdisk /dev/sda 

vgcreate vg01 /dev/sda1 /dev/sda2 

lvcreate -L +2G vg01 lv01 

mkfs.ext3 -L lv01 lv01 

vi /etc/fstab 

LABEL=lv01 /dev/lv01 ext3 defaults 0 0 