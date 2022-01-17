# Correct the projectadmin user account so that logins are possible using the password _onetime43_. 
#     1. Set the home directory to /home/projectadmin. 

passwd projectadmin 

>_onetime43_

>_onetime43_

usermod -d /home/projectadmin projectadmin 

