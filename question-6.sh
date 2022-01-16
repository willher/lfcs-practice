# 6. Complete the following network requirements:
# 	a. Configure your Linux machine with a static networking configuration
# 	b. After you have set up static networking, add a secondary DNS server at the address of 8.8.8.8
#   c. Find a list of current nameservers for the system and redirect the output to a file called ‘dnsservice’ located in /srv/dns
#   d. Find the hostname and IP address of your machine and append the output to the dns-service located in /srv/dns

ip a 

#gathers information about ehternet connections (ignore loopback device)

cp /etc/sysconfig/network-script/<EHTERNET> /etc/sysconfig/network-script/<ETHERNET>- 

#backup the file before making changes 

vi /etc/sysconfig/network-scripts/<EHTERNET>

BOOTPROTO = "none"

#change to none

IPADDR="192.168.10.10"
NETMASK="255.255.255.0"
GATEWAY="192.168.10.1"
BROADCAST="192.168.10.255"
DNS1="192.168.10.3"
DNS2="8.8.8.8"

wq!

#this sets up static networking and adds a second DNS

cat /etc/resolv.conf | grep nameserver >> /srv/dns/dnsservice 

hostname 

ip route 

vi /srv/dns/dnsservice 