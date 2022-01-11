# 14. Find the last (5) recently installed rpm packages and redirect the output to a newly created file named /rpm/rpm-data

rpm -qa --last | tail -5 >> /rpm/rpm-data

#***Question: this command needs -5 to show 5 entires, right?  Need to be output to the file specificed, right?***