# Create a candidate user account with the password cert456. Modify the sudo configuration to let the candidate account access root privileges with no password prompt 

useradd canidate 

passwd canidate 

>cert456

>cert456 

visudo 

/wheel

canidate ALL=(ALL) NOPASSWD: ALL 

wq! 