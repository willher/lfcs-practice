# 13. Set limitations for the number of processes a user can run in the following groups:
# 	a. Contractors can run a hard limit of 30 processes
# 	b. Employees can run a soft limit of 50 processes

vim /etc/secuirty/limits.conf 

@contractors hard nproc 30
@employees soft nproc 20

#this will set the limits. Just follow the pattern from the commented out examples in the file