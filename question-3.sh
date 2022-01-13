# 3. Create a virtual machine with the following attributes:
# 	a. 1 vcpu
# 	b. 512 MB of memory
# 	c. Create and attach a 5GB disk for storage
# 	d. Download and use the minimal version of the current CentOS version as the OS image

yum install qemu-kvm libvirt libvirt-client virt-install virt-viewer wget

#installs the modules needed 

systemctl enable libvirtd

#enables the libvirtd service

wget http://mirror.compevo.com/centos/7.9.2009/isos/x86_64/CentOS-7-x86_64-Minimal-2009.iso

#wget to pull the iso from a link 

virt-install --name=ExVm01 --ram=512 --vcpu=1 --location=/tmp/CentOS-7-x86_64-Minimal-2009.iso --os-type=linux --os-variant=rhel7 --network type=direct,source=eth0 --disk path=/var/lib/libvirt/images/centos7vm.dsk,size=8 --nographics --extra-args console=ttySO

#this command will install a VM with the requirements from the question