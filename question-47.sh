#create a 1GB SWAP partition and add it to the exiting SWAP pool. Ensure it is mounted at boot. 

lsblk 

fdisk 

+1G

partprobe 

swap on 

vi /etc/fstab 