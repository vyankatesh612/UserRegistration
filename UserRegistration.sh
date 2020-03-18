#!/bin/bash -x
echo "********USER REGISTRATION********"

function uservalidation()
	{
		local user=$1
		local pattern=$2 
		if [[ $user =~ $pattern ]]
		then
			echo "valid"
		else
			echo "Invalid"
		fi
	}

function usermobile()
	{
		read -p "Enter mobile number : " mobilenumber
		mobilepattern="[0-9]{2}[ ]?[0-9]{10}$"
		if [[ $mobilenumber =~ $mobilepattern ]]
		then
			echo "valid"
		else
			echo "invalid"
		fi
	}

read -p "Enter the first name : " firstname
firstnamepattern="^[A-Z][a-z]{3,}$"
uservalidation $firstname $firstnamepattern

read -p "Enter the last name : " lastname
lastnamepattern="^[A-Z][a-z]{3,}$"
uservalidation $lastname $lastnamepattern

read -p "Enter the Email-id : " email
emailpattern="^([a-zA-Z0-9]{1,}([.]?[a-zA-Z0-9])*[@][a-zA-Z]+[.][a-zA-Z]{2,4}[.]?[a-zA-Z]*)$"
uservalidation $email $emailpattern

usermobile

read -p "Enter password : " password
passwordpattern="[0-9a-zA-Z]{8,}$"
uservalidation $password $passwordpattern
