#Create a RAID 1 array using LVM using the two spare drives (5GB) on this machine:
#   a. size = 1024MB
#   b. label = RAID_1
#   c. mounted persistently by UUID to /stoarage2

lsblk 

fdisk /dev/sda 

+1024MB 

partprobe

fdisk /dev/sdb 

+1024MB 

partprobe

yum install mdadm 

mdadm --create /dev/md0 --level=1 --raid-devices=2 /dev/sda1 /dev/sdb1 

mkfs.ext4 /dev/md0 -L RRAID_1 

mkdir /stoarage2 

mount /dev/md0 /stoarage2

partprobe 

lsblk -af

vi /etc/fstab 

UUID=<OUTPUT> /stoarage2 defaults 0 0

wq!