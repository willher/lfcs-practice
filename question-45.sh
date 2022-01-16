#using your local repo, install the packages needed for virtualization

ls /etc/yum.repos.d/ 

yum --disalberepo="*" --enablerepo="<LOCAL_REPO>" install libvirt virt-install qemu wget 
