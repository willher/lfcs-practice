# 6. Complete the following network requirements:
# 	a. Configure your Linux machine with a static networking configuration
# 	b. After you have set up static networking, add a secondary DNS server at the address of 8.8.8.8
#   c. Find a list of current nameservers for the system and redirect the output to a file called ‘dnsservice’ located in /srv/dns
#   d. Find the hostname and IP address of your machine and append the output to the dns-service located in /srv/dns

ip a 

cd /etc/sysconfig/network-scripts/ 

vi eth0.conf 

BOOTPROTO=none

USERCTL Delete

IPADDR=ip -aa
PREFIX=24
GATEWAY=ip -a
DNS1=8.8.8.8
DNS2=8.8.4.4

wq!

systemctl restart NetworkManager.service
