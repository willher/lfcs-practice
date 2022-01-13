# 1. Attach a 10gb disk for additional storage and perform the following tasks:
# 	a. Create two partitions, each with 2GB of storage
# 	b. Create a volume group name ‘vg01’ from the two partitions
# 	c. Create a logical volume named ‘lv01’ with the following attributes
# 		i. 2GB of storage from vg01
# 		ii. Format it with the ext3 file system
# 		iii. Give it a label ‘lv01’
# 		iv. Mount it persistently to /mnt 

lsblk -af 

#lists avalible disks / partitions

fdisk /dev/sdb 

fdisk /dev/sdb

vgcreate vg01 /dev/sbd1 /dev/sbd2

lvcreate -L +2G -n lv01 vg01 

cd /dev/vg01 

mkfs.ext3 -L lv01 lv01 

vi /etc/fstab 

LABEL=lv01 /mnt ext3 defaults 0 0 

wq!

mount -L lv01 /mnt 