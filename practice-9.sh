# 9. Create a script that displays:
#     a. The current date, time, user, system run level, and SELinux status.  
#     b. The script should be named ‘system-info’ and be located in /srv/system
#     c.  Lastly, the output should be emailed to root

yum install mailx 

vi /srv/system/system-info 

#!/bin/bash

date=$(date)
user=$(whoami)
systemrunlevel=$(runlevel)
selinux=$(getenforce)

echo "$date" >> output.txt
echo "$user" >> output.txt
echo "$systemrunlevel" >> output.txt
echo "$selinux" >> output.txt

mail -s "system info" root > output.txt

rm output.txt 

