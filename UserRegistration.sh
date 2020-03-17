#!/bin/bash -x
echo "********USER REGISTRATION********"
function firstname()
	{ 
		read -p  "Enter the first name : " firstname
		pattern="^[A-Z][a-z]{3,}$"
		if [[ $firstname =~ $pattern ]]
		then
			echo "valid"
		else
			echo "Invalid"
		fi
	}
firstname
