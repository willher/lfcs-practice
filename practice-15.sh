# 15.  Find the rpm package which owns the library file /usr/lib/NetworkManager/conf.d/10-slaves-order.conf and append the output to /rpm/rpm-data

rpm -qa --whatprovices /usr/lib/NetworkManager/conf.d/10-slave.conf >> /rpm/rpm-data 