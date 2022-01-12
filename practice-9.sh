# 9. Create a script that displays:
#     a. The current date, time, user, system run level, and SELinux status.  
#     b. The script should be named ‘system-info’ and be located in /srv/system
#     c.  Lastly, the output should be emailed to root

vi /srv/system/system-info 

#!/bin/bash
date=$(date)
name=$(whoami)
runlevel=$(runlevel)
selinux=$(getenforce)

echo"$date" >> output.txt
echo"$name" >> output.txt
echo"$runlevel" >> output.txt
echo"$selinux" >> output.txt

mailx -s "system info" root < output.txt 

wq!

yum install mailx 