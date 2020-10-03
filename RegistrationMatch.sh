##!/bin/bash -x
echo "Welcome to the User Registration Validation code"
#First Name Validation
read -p "Enter the First Name : " FirstName
firstnamepattern="^([A-Z]*[a-z]){3,}$"
if [[ $FirstName =~ $firstnamepattern ]]
then
	echo "First Name is Valid"
else
	echo "First Name is Invalid"
fi

#Last Name Validation
read -p "Enter the Last Name : " LastName
lastnamepattern="^([A-Z]*[a-z]){3,}$"
if [[ $LastName =~ $lastnamepattern ]]
then
        echo "Last Name is Valid"
else
        echo "Last Name is Invalid"
fi

