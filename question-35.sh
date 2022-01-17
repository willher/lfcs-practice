# Configure the swap partition /dev/xvdi1 so that it does not* become attached automatically at boot time. 

lsblk 

fdisk /dev/sdb 

mkswap /dev/sdb1

swapon /dev/sdb1

vi /etc/fstab 

/dev/sdb1 none swap defaults 0 0 

#Remove this line 

swapon /dev/sdb1 