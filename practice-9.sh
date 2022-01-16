# 9. Create a script that displays:
#     a. The current date, time, user, system run level, and SELinux status.  
#     b. The script should be named ‘system-info’ and be located in /srv/system
#     c.  Lastly, the output should be emailed to root

yum install mailx 

vi /srv/system/system-info 

#!/bin/bash

date=$(date)
whoami=$(whoami)
runlevel=$(runlevel)
getenforced=$(getenforced)

echo"$date" >> output.txt 
echo"$whoami" >> output.txt
echo"$runlevel" >> output.txt 
echo"$getenforced" >> output.txt

mail -s "system info" root < output.txt 

rm output.txt

wq! 