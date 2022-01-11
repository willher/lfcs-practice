# 10. Create a series of scheduled tasks:
#   a. Run the system-info script every day at 6am, 9am, 12pm, 3pm, and 6pm (except Saturday and Sundays). 
# 	b. Run the system-info script on January 9th at 11:01pm
# 	c. Run the system-info script every 3 months at 12:01am

vim /etc/crontab

#this is the file we want to write the entries to.  It includes a hint but remember min, hour, day of month, month, day of week AND WHEN USER SCRIPT

0 6 * * 1-5 root /srv/system/system-info 

0 9 * * 1-5 root /srv/system/system-info

0 12 * * 1-5 root /srv/system/system-info 

0 15 * * 1-5 root /srv/system/system-info

0 18 * * 1-5 root /srv/system/system-info

1 23 9 1 * root /srv/system/system-info

1 0 1 */3 * root /srv/system/system-info 

#the first 5 meet the criteria for a and ***QUESTION: could be combined into 1 cron entry using 6,9,12,15,18???***