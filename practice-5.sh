# 5.  Complete the following system exercises:
# 	a. Create 2 files in a new directory called ‘manuals’ located in your home directory 
#         i. Name the first file ‘sed-info’ and redirect the output of the ‘sed’ command man page to the contents of the file
#         ii. Name the second file ‘grep-info’ and redirect the output of the ‘grep’ command man page to the contents of the file. 
#     b. Archive and compress the contents of the newly created ‘manuals’ directory using the xz compression tool
#     c. Extract the contents of the compressed tar file to a new directory named /data/instruction
#     d. Go back to your home directory, uncompress the manuals.tar.xz file and move it to the /srv directory. 

cd /home 

mkdir manuals

man -P cat sed >> sed-info

man -P cat grep >> grep-info 

tar -cJf manArch.tar.xz sed-info grep-info 

cd /data 

mkdir instruction 

cd instruction 

cp /home/manuals/manArch.tar.xz . 

tar -cJf manArch.tar.xz 

cd /home/manuals 

xz -v -d manArchive.tar.xz 

mv manArch.tar /srv/