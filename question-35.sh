# Configure the swap partition /dev/xvdi1 so that it does not* become attached automatically at boot time. 

lsblk 

mkswap /dev/sdb OR fdisk /dev/sdb 

swapon /dev/sdb3 

vi /etc/fstab 

swapon -s 

