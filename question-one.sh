# 1. Attach a 10gb disk for additional storage and perform the following tasks:
# 	a. Create two partitions, each with 2GB of storage
# 	b. Create a volume group name ‘vg01’ from the two partitions
# 	c. Create a logical volume named ‘lv01’ with the following attributes
# 		i. 2GB of storage from vg01
# 		ii. Format it with the ext3 file system
# 		iii. Give it a label ‘lv01’
# 		iv. Mount it persistently to /mnt 

fdisk /dev/sbd

#***QUESTION: Cannot open file or dir, do we need to attach the 10gb disk before we do this OR look for an avalible disk??***