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

vim /etc/login.defs

/PASS_MAX_DAYS

PASS_MAX_DAYS: 730

#this will force all passwords to expire after 2 years

mkdir /etc/skel/welcome-info

#this makes sure the welcom-info file is created for each new user

yum install zsh

#this installs the zsh shell that linuxbro will need as a default

useradd -G administrators -s /bin/zsh -c "FullName Linux Broman" linuxbro

#this will create linuxbro with his comment, shell, and group

passwd linuxbro

>Pa$$w0rd

>Pa$$w0rd

passwd --expire linuxbro

#this will set/confirm the password is set to Pa$$w0rd and requires a reset on next login

useradd -G employees gharrison

passwd gharrison

>Pa$$w0rd

>Pa$$w0rd
passwd --expire gharrison

#same but for gharrison

useradd -G contractors jlennon

passwd jlennon

>Pa$$w0rd

>Pa$$w0rd

passwd --expire jlennon

#same but for jlennon

useradd -G employees pmccartney

passwd pmccartney

>Pa$$w0rd

>Pa$$w0rd

passwd --expire pmccartney

#same but yup for pmmcartney

useradd -G contractors rstarr 

passwd rstarr

>Pa$$w0rd

>Pa$$w0rd

passwd --expire rstarr

#finally more of the same for rstarr