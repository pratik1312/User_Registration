##!/bin/bash -x
echo "Welcome to the User Registration Validation code"
read -p "Enter the First Name : " FirstName
firstnamepattern="^([A-Z]*[a-z]){3,}$"
if [[ $FirstName =~ $firstnamepattern ]]
then
	echo "First Name is Valid"
else
	echo "First Name is Invalid"
fi
