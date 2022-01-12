# 9. Create a script that displays:
#     a. The current date, time, user, system run level, and SELinux status.  
#     b. The script should be named ‘system-info’ and be located in /srv/system
#     c.  Lastly, the output should be emailed to root

yum install mailx

#this isntalls mailx so we can email the message 

mkdir /srv/system 

cd /srv/system 

vim system-info 

#this makes the directory and script file which contains the following

#!/bin/bash
now=$(date)
me=$(whoami)
runL=$(runlevel)
seLinux=$(getenforce)

echo "$now" >> output.txt
echo "$me" >> output.txt
echo "$runL" >> output.txt
echo "$seLinux" >> output.txt

mail -s "System Info" root < output.txt

rm output.txt 

#this script will set the now, me, runL, and seLinux variables to pull date, time, suer, system run level and SELinux status print them to a file called output.txt 
#the script then sends that output.txt file as an input to mail -s to email the message to root 
#the script then cleans up the output.txt file so it's not appending to it continuously 