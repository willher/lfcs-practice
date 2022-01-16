# Create a new user account with the following attributes: 
#     ●Username is harry. 
#     ●Password is magic. 
#     ●This user’s home directory is defined as /home/school/harry/. 
#     ●This new user is a member of the existing students group. 
#     ●The /home/school/harry/binaries/ directory is part of the PATH variable. 

useradd harry 

passwd harry

>magic

>magic

usermod -d /home/school/harry/ harry

usermod -G students harry 

vi /home/school/harry/.bash_profile

PATH=$PATH:$HOME/binaries 

mkdir /home/school/harry/binaries 