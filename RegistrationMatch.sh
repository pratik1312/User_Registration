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

#Email Validation

read -p "Enter Email Address : " Email
emailpattern="^[a-zA-z0-9]+([.+-][a-zA-Z0-9]+)*@[a-zA-Z0-9]+.[a-zA-Z]{2,}([.][a-zA-Z]{2,}){0,1}$"
if [[ $Email =~ $emailpattern ]]
then
	echo "Email address is Valid"
else
	echo "Email address is Invalid"
fi

#Mobile Number Validation

read -p "Enter the Mobile Number : " Number
numberpattern="^[91]{2} [0-9]{10}$"
if [[ $Number =~ $numberpattern ]]
then
	echo "Mobile number is Valid"
else
	echo "Mobile number is Invalid"
fi

#Password Validation
#Rule 4

read -p "Enter a password with minimum lenght as 8 : " Password
#passwordpattern="^[a-zA-Z0-9]{7,}[!@#$%^&*-_.]{1}[a-zA-Z0-9]{1,}$"
count=${#Password}
echo "Password length is : " $count
passwordpattern="^[a-zA-Z0-9]{1,}[!@#$%^&*._-]{1}[a-zA-Z0-9]{1,}"
if [[ $count -ge 8 ]]
then
        if [[ $Password =~ $passwordpattern ]]
        then
                echo "Password is Valid"
        else
                echo "Password is Invalid"
        fi
fi

