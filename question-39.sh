#upon booting, set machine to permanently boot into runlevel 3

systemctl get-default

systemctl list-units

systemctl set-default multi-user.target 

OR

who -r

init 3