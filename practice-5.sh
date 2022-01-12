# 5.  Complete the following system exercises:
# 	a. Create 2 files in a new directory called ‘manuals’ located in your home directory 
#         i. Name the first file ‘sed-info’ and redirect the output of the ‘sed’ command man page to the contents of the file
#         ii. Name the second file ‘grep-info’ and redirect the output of the ‘grep’ command man page to the contents of the file. 
#     b. Archive and compress the contents of the newly created ‘manuals’ directory using the xz compression tool
#     c. Extract the contents of the compressed tar file to a new directory named /data/instruction
#     d. Go back to your home directory, uncompress the manuals.tar.xz file and move it to the /srv directory. 

cd /home/willis_hertweck/

mkdir manuals 

cd manuals 

man -P cat sed >> sed-info 

man -P cat grep >> grep-info 

tar -cvf manuals.tar * 

xz -z manuals.tar 

cd /data

mkdir instruction

cd instruction 

cp /home/willis_hertweck/manuals.tar.xz . 

xz -d manuals.tar.xz 

tar -xvf manuals.tar 

cd /home/willis_hertweck/ 

xz -d manuals.tar.xz 

mv manuals.tar /srv 