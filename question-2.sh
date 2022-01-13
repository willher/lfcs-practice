#2.  Install and configure a webserver:
	# a. Create the website lfctst.com
	# b. Ensure a client connecting to lfctst.com sees a message “Hello World”

ssh user@LFCS-2 

#the question wants you to setup the webserver to run on LFCS-2 so you have to ssh to the server first

yum install httpd

#this installs teh httpd module you need for a basic webserver

firewall-cmd --permanent --add-service=http

#add a firewall rule to permanently allow http traffic

firewall-cmd --reload

#reloads the firewall to make sure it uses the new rule

chmod -R 755 /var/www

#change perms of www directory recursively

vim /var/www/lfctest/html/index.html 

<p>Hello World</p>

#this creates the hello world index.html file to say 'Hello World'.  ***QUESTION: Did we need to create the directory first?***

vim /etc/httpd/conf/httpd.conf 

##QUESTION: are you commenting out the conf.d/*.conf and adding our customer directories

sudo mkdir /etc/httpd/sites-avalible /etc/httpd/sites-enabled 

#make the directories we need for sites-avalbile and sites-enabled 

vim /etc/httpd/sites-avalible/lfctest-02.conf

#make oour config file

<VirtualHost *:80>
ServerName www.lfcstest
ServerAlias lfcstest
DocumentRoot /var/www/lfcstest/html
ErrorLog /var/www/lfcstest/log/error.log
CustomLog /var/www/lfcstest/log/requests.log combined
</VirtualHost>

#contents of the config file to serve lfcstest

ln -s /etc/httpd/sites-avalible/lfctest.conf /etc/httpd/sites-enabled/lfctest.conf

#create a sym link of our config for sites-enabled and sites-avalbile 

sudo setsbool -P httpd_unified_1

#***QUESTION: ????***

sudo ls -dZ /var/www/your_domain/log/

sudo semanage fcontext -a -t httpd_log_t "/var/www/your_domain/log(/.*)?"

sudo restorecon -R -v /var/www/your_domain/log

sudo ls -dZ /var/www/your_domain/log/

systemctl restart httpd

#restarts the httpd service

systemctl enable httpd 

#enabled httpd