#Configure the swap partition /dev/xvdi1 so that it does not* become attached automatically at boot time. 

lsblk 

vi /etc/fstab 

remove /dev/xvdi1 

lsblk -af 

vi /etc/fstab 

remove UUID reference to /dev/xvdi1 

OR

fdisk /dev/sba 

t 

19; Linux Swap 

mkswap /dev/sba1 

swapon /dev/sba1 

