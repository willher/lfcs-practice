# Create a cron job that kills all processes named scan_filesystem which is owned by root, every minute. 

vi /etc/crontab 

0-59 * * * * root pkill -f scan_filesystem 

:wq!