# 4. Once you have created the VM ‘ExVM01’ apply the following changes
# 	a. Stop the VM
# 	b. Start the VM
# 	c. Apply automatic stat configuration for the VM

virsh shutdown ExVM01 

virsh start ExVm01 

virsh autostart ExVm01 