# The following tasks may be achieved using the user student’s sudo privileges: 
#     1.Temporarily mount the filesystem available on /dev/xvdf2 under /mnt/backup/. 
#     2.Decompress and unarchive the /mnt/backup/backup-primary.tar.bz2 archive into /opt/. 
#         a. This should result in a new directory (created from the archive itself) named /opt/proddata/.

mount /dev/xvdf2 /mnt/backup/ 

yum install bzip2 

cd /opt

cp /mnt/backup/backup-primary.tar.bz2 . 

bzip2 -d /mnt/backup/backup-primary.tar.bz2