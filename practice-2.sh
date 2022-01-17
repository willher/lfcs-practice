#2.  Install and configure a webserver:
	# a. Create the website lfctst.com
	# b. Ensure a client connecting to lfctst.com sees a message “Hello World”

yum install httpd lynx 

systemctl enable httpd

systemctl start httpd 

firewall-cmd --perminate --add-service=http 

firewall-cmd --reload 

vi /var/www/html/index.html 

<HTML>
<BODY>
<P>Hello World</P>
</BODY>
</HTML>

wq!

ip a 

vi /etc/hosts

wq!

systemctl restart httpd 

apachectl restart 