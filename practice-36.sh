# Configure the system so that the existing filesystem that corresponds to /staging gets persistently mounted in read-only mode.

lsblk -af

vi /etc/fstab

UUID= /boot/ ext4 defaults,ro 0 0 