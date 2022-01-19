# 3. Create a virtual machine with the following attributes:
# 	a. 1 vcpu
# 	b. 512 MB of memory
# 	c. Create and attach a 5GB disk for storage
# 	d. Download and use the minimal version of the current CentOS version as the OS image

yum install libvirt libvirt-bin qemu qemu-kvm wget qemu qemu-kvm 

systemctl enable libvirtd 

systemctl start libvirtd 

virt-install --name=ExVm01 --vcpu=1 --ram=512 --disk size=5 --os-type=linux --os-varient=centos-stream9 --import 

OR

virt-install --name=EXVM01 --vcpu=1 --ram=512 --disk size=5 --os-type=linux --os-varient=centos-stream9 --cdrom=/tmp/OS_IMAGE_iso 

virsh start ExVm01 