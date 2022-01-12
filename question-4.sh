# 4. Once you have created the VM ‘ExVM01’ apply the following changes
# 	a. Stop the VM
# 	b. Start the VM
# 	c. Apply automatic stat configuration for the VM

virsh start ExVm01

#starts the Vm.  You cannot stop it if it's not running yet

virsh shutdown ExVm01 

#shuts down the VM

virsh start ExVm01

#starts the VM again

virsh autostart ExVm01

#this applies the auto start to the config file