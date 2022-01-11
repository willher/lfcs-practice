# 10. Create a series of scheduled tasks:
#   a. Run the system-info script every day at 6am, 9am, 12pm, 3pm, and 6pm (except Saturday and Sundays). 
# 	b. Run the system-info script on January 9th at 11:01pm
# 	c. Run the system-info script every 3 months at 12:01am

vi /etc/crontab 

0 6,9,12,15,18 * * 1-5 root /path/to/script

1 23 8 1 * root /path/to/script

1 0 1 */3 * root /path/to script