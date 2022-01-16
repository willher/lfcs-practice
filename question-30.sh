# Ensure that all users can invoke the last command and access a list of users who previously logged in. 

which last 

cd /bin

ll last 

chmod a+x last 

chmod a+w /var/log/wtmp
chmod a+w /var/log/btmp 