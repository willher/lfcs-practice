#2.  Install and configure a webserver:
	# a. Create the website lfctst.com
	# b. Ensure a client connecting to lfctst.com sees a message “Hello World”

yum install httpd 

systemctl status httpd 

systemctl enable httpd

systemctl start httpd 

vi /var/www/index.html 

<HTML>
<BODY>
<P>Hello Wolrd</P>
</BODY>
</HTML>

:wq!

firewall-cmd --perminate --add-serivce=http 

firewall-cmd --reload 

vi /etc/hosts 

lfctst.com 

systemctl restart httpd 

