# Perform the following tasks to demonstrate your ability to search for files given various criteria: 
#     1.Find all executable files in the directory /srv/SAMPLE002 and remove them 
#     2.Find all files in the directory /srv/SAMPLE002, which have not been accessed during the last month and remove them 
#     3.Find all empty directories in the directory /srv/SAMPLE002 and remove them 
#     4.Find all files in the directory /srv/SAMPLE002 with a file extension of .tar. 
#         a. Write a list of matching filenames, one per line, to the file /opt/SAMPLE002/toBeCompressed.txt, which has already been created. 
#         a. Ensure that you specify a relative path to each file, using /srv/SAMPLE002 as the base directory for the relative path 

find /srv/SAMPLE002 -executable -type f -delete

find /srv/SAMPLE002 -atime +30 -type f -delete

find /srv/SAMPLE002 -type d -empty -delete 

cd /srv/SAMPLE002 

ls *.tar | sed -e 's#^#../../srv/SAMPLE001/#' >> /opt/SAMPLE002/toBeCompressed.txt 

ls -ad $(pwd)/*.tar >> /opt/SAMPLE002/toBeCompressed.txt 
