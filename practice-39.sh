#upon booting, set machine to permanently boot into runlevel 3

who -r 

init 3 

systemctl get-default 

systemctl set-default runlevel3.target 