#!/bin/bash

printf "#===================\n"
printf "# Password Generator\n"
printf "#===================\n"
printf "\n"

#Read user input to determine password length
read -p "How many characters? " pwd_length

#Generate a random password using /dev/urandom
genpasswd () {
tr -dc A-Za-z0-9_ < /dev/urandom | head -c $pwd_length
}

#Display the newly created random password
printf "Your password is: \n"
genpasswd
printf "\n"
