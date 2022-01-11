# 16. Create a RAID 1 device named md0 using 2 disk devices of 1GB each and complete the following:
# 	a. Put a ext4 file system on it with the label of ‘md0’
# 	b. Add a spare disk of 1GB
# 	c. Mount to /raid
# 	d. Save the configuration

fdisk /dev/sdb 

#QUESTION: how do you know know to use /dev/sdb?***

>n

>enter 

>enter 

>+1G 

>t 

>l 

>fd 

>w 

partprobe 

#ths will create the 1st 1gb disk

fdisk /dev/sdc 

#QUESTION: how do you know to use /dev/sdc?***

>n 

>enter 

>enter 

>+1G

>t 

>l 

>fd 

>w 

partprobe 

#This will create the 2nd 1gb disk

yum install mdadm 

#this is the utility used to make the RAID

mdadm --create /dev/md0 --level=mirror --raid-devices=2 /dev/sdb3 /dev/sdc1

#***QUESTION: why is it /dev/sdb3 and /dev/sdc1?***

cat /proc/mdstat

mdadm -E /dev/sdb3 /dev/sdc1 

mdadm --detail /dev/md0 

mkfs.ext4 /dev/dm0

mkdir /raid

mount /dev/md0 /raid

lsblk 

vim /etc/fstab 

/dev/md0 /raid1 ext4 defaults 0 0

wq! 

#this creates the raid and mounts it as well as saving the configuration ***QUESTION: 'Add a spare disk of 1GB'?***