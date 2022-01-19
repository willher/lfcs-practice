# 1. Attach a 10gb disk for additional storage and perform the following tasks:
# 	a. Create two partitions, each with 2GB of storage
# 	b. Create a volume group name ‘vg01’ from the two partitions
# 	c. Create a logical volume named ‘lv01’ with the following attributes
# 		i. 2GB of storage from vg01
# 		ii. Format it with the ext3 file system
# 		iii. Give it a label ‘lv01’
# 		iv. Mount it persistently to /mnt 

lsblk 

fdisk /dev/sdb 

t 

31, Linux LVM

partprobe 

fdisk /dev/sdb 

t

31, Linux LVM

w 

pvcreate /dev/sdb1 

pvcreate /dev/sdb2 

vgcreate vg01 /dev/sdb1 /dev/sdb2 

lvcreate -L +2G -n lv01 vg01 

mkfs.ext3 -L lv01 lv01 

mount -L /sdb/vg01/lv01 /mnt 

vi /etc/fstab 

/dev/vg01/lv01 /mnt ext3 defaults 0 1 

wq! 