# Create a bash shell script named certscript.sh under /home/student/apps/. 
#     1. Make sure the script can be invoked as ./certscript.sh. 
#     2. The first line of output from the script should consist of the name of the user who invoked it. 
#     3. The second line of output should contain the IP address of the default gateway. 

vi /home/student/apps/certscript.sh 

#!/bin/bash

name=$(whiami)
ip_addr=$(ip route)

echo"$name" >> output.txt
echo"$ip_addr" >> output.txt 

:wq! 

chmod 777 /home/student/apps/certscript.sh 

cd /home/student/apps/

./certsript.sh 