#!/bin/bash -x
echo "********USER REGISTRATION********"

function firstname()
	{ 
		read -p  "Enter the first name : " firstname
		local pattern="^[A-Z][a-z]{3,}$"
		if [[ $firstname =~ $pattern ]]
		then
			echo "valid"
		else
			echo "Invalid"
		fi
	}
firstname

function lastname()
	{
		read -p "Enter the last name : " lastname
		local pattern="^[A-Z][a-z]{3,}$"
		if [[ $lastname =~ $pattern ]]
		then
			echo "valid"
		else
			echo "Invalid"
		fi
	}
lastname

function email()
	{
		read -p "Enter email address : " email
		local pattern="^([a-zA-Z0-9]{1,}([.]?[a-zA-Z0-9])*[@][a-zA-Z]+[.][a-zA-Z]{2,4}[.]?[a-zA-Z]*)$"
		if [[ $email =~ $pattern ]]
		then
			echo "valid"
		else
			echo "invalid"
		fi
	}
email
