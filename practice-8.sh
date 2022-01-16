# 8. Perform the following actions (read section as some steps can be combined):
# 	a. Create the following users:
# 		i. linuxbro
# 		ii. gharrison
# 		iii. jlennon
# 		iv. pmccartney
# 		v. rstarr
# 	b. Make linuxbro’s primary group ‘administrators’
# 	c. Make linuxbro’s default shell zsh 
# 	d. Make a comment for the account linuxbro stating the user’s full name of “Linux Broman”
# 	e. Make the accounts for jlennon and rstarr expire two years from today’s date
# 	f. Add accounts jlennon and rstarr to the contractors group
# 	g. Add accounts gharrison and pmccartney to the employees group
# 	h. Ensure each user has a folder in their home directory called ‘welcome-info’
# 	i. Set each account’s password to ‘Pa$$w0rd’ and make them change it on next login

yum install zsh 

vi /etc/login.defs 

MAX_PASS_DAYS 730

useradd -c "Linux Broman" -s /bin/zsh -G administrators linuxbro

passwd linuxbro 

>Pa$$w0rd 

>Pa$$w0rd 

passwd --expire linuxbro

useradd -G contractors jlennon

useradd -G contractors rstarr

passwd jlennon 

>Pa$$w0rd 

>Pa$$w0rd

passwd rstarr 

>Pa$$w0rd

>Pa$$w0rd 

passwd --expire rstarr

passwd --expire jlennon 

useradd -G employees gharrison

useradd -G employees pmccartney 

passwd gharrison 

>Pa$$w0rd

>Pa$$w0rd 

passwd pmccartney 

>Pa$$w0rd

>Pa$$w0rd 

passwd --expire pmccartney 

passwd --expire gharrison 

mkdir /etc/skel/welcome-info 