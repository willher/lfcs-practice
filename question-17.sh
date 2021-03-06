# 17. Verify which port the following services are listening on:
#     a. http daemon and enter the port number (and only the port number) in a file named ‘ports’ in /srv
#     b. SSH daemon and append the port number (and only the port number) to the file ‘ports’ in /srv

netstat -tulpn | grep httpd 

netstat -tulpn | grep sshd

vim /srv/ports

#First two commands will have an output that includes the port number which you can add to the file