#create a 1GB SWAP file and add it to the exiting SWAP pool. Ensure it is mounted at boot. 

lsblk 

dd if=/dev/zero of=/root/extra.swp bs=1M count=102

mkswap /root/extra.swp 

chmod 600 /root/extra.swp 

swapoff /root/extra.swp 

vi /etc/fstab 

/root/extra.swp none swap defaults 0 0 

swapon /root/extra.swp 
