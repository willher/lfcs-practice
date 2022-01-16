#2.  Install and configure a webserver:
	# a. Create the website lfctst.com
	# b. Ensure a client connecting to lfctst.com sees a message “Hello World”

yum install httpd

#this installs teh httpd module you need for a basic webserver

systemctl status httpd 

systemctl enable httpd

systemctl start httpd 

#enables and starts the httpd service

vi /var/www/index.html 

<HTML>
<BODY>
<P>Hello Wolrd</P>
</BODY>
</HTML>

:wq! 

#creates a basic hello world page

firewall-cmd --perminate --add-serivce=http 

firewall-cmd --reload 

#allows traffic via http to the webserver

ip a 

vi /etc/hosts 

lfctst.com added to localhost or based on IP address from an interfact from ip a 

#updates the /etc/hosts file to resolve to the FQDN lfctst.com

systemctl restart httpd 

#ensures we have the latest configuration loaded by httpd