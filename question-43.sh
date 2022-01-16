#Create a RAID 0 array using the (2) spare 5GB drives on the machine
#   a. size = 2048MB
#   b. label = RAID_0
#   c. mount it persistently by 'label' at /storage 

lsblk 

fdisk /dev/sda 

+2048MB 

partprobe 

fdisk /dev/sdb 

+2048MB 

partprobe 

yum install mdadm 

mdadm --create /dev/md0 --raid-devices=2 --level=0 

mkfs.ext4 -L RAID_0 /dev/md0 

mkdir /storage

mount /dev/md0 /storage 

vi fstab 

LABEL=RAID_0 /storage defautls 0 0

wq!
