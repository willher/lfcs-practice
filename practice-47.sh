#create a 1GB SWAP file and add it to the exiting SWAP pool. Ensure it is mounted at boot. 

lsblk 

dd if=/dev/zero of=/root/sample.swp bs=1M count=102

mkswap /root/sample.swp 

swapon /root/sample.swp 

vi /etc/fstab 

/root/sample.swp none swap defaults 0 0 

wq! 