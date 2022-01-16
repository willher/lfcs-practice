#Statically assign viable network settings to your machine
#   a. IP
#   b. DNS
#   c. FQDN
#   d. Gateway 

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

vi /etc/hosts
