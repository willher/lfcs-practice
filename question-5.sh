# 5.  Complete the following system exercises:
# 	a. Create 2 files in a new directory called ‘manuals’ located in your home directory 
#         i. Name the first file ‘sed-info’ and redirect the output of the ‘sed’ command man page to the contents of the file
#         ii. Name the second file ‘grep-info’ and redirect the output of the ‘grep’ command man page to the contents of the file. 
#     b. Archive and compress the contents of the newly created ‘manuals’ directory using the xz compression tool
#     c. Extract the contents of the compressed tar file to a new directory named /data/instruction
#     d. Go back to your home directory, uncompress the manuals.tar.xz file and move it to the /srv directory. 

cd /home

mkdir manuals

mkdir /data

mkdir /data/instuctions 

#this creates the /home/manuals directory as well as /data and /data/instructions directories we will use later

cd manuals

man -P cat sed >> sed-info

man -P cat grep >> grep-info

ll -ltr 

#this will move us into the manuals directory and create our two files populated with data.  We then can list the contents to verify it's correct

vim sed-info

#sanity check we have info in the file

tar -cJf manArch.tar.xz *

#this will compress and archive the contents of both files

cp manArch.tar.xz /data/instructions 

cd /data/instructions

tar -xJf manArchive.xz 

ll -ltr

#this will copy the archive to where we want to unzip it and unzip the file looking for anything that ends in -info.  We can then list to verify both files are there

cd /home/manuals

xz -v -d manArch.tar.xz

mv manArch.tar /srv/ 

#this un-compress our tar file in our /manuals directory and moves the tar file