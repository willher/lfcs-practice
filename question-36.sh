# Configure the system so that the existing filesystem that corresponds to /staging gets persistently mounted in read-only mode. '

lsblk -f 

vi /etc/fstab 

UUID=<output from lsblk -f> /boot ext4 default,ro 0 0 