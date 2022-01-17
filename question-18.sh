# 18. Change the port where the ssh daemon listens to port 9999. Verify connectivity through the new port. 

vim /etc/ssh/sshd_config

port 9999

wq! 

semanage port -m -t ssh_port_t =p tcp 9999

#use -m because the ssh_port_t is already defined as a port object type.  If it is not, use -a to add it instead.

firewall-cmd --add-port=9999/tcp --permanent

firewall-cmd --reload

systemctl restart sshd

ssh localhost -p 9999

#this will add the firewall rule to allow tcp on port 9999, reload the firewall, and start the ssh service
#ssh localhost on port 9999 to verify.  If you get a fingerprint it worked