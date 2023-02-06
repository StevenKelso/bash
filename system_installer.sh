#!/bin/bash

#The list of software to install
app_list=("git" "vim" "firefox" "keepassxc" "nitrogen" "neofetch" "rofi")
list_var=$((${#app_list[@]}-1))

#Determining the package manager
if command -v apt >/dev/null
then
    pm=apt
elif command -v dnf >/dev/null
then
    pm=dnf
elif command -v pacman >/dev/null
then
    pm=pacman
fi

#Installing the list of software
if [ $pm="apt" ]; then
    sudo apt update
    for (( i=0; i<=$list_var; i++ ))
    do
    sudo apt install ${app_list[i]}
    done
elif [ $pm=dnf ]; then
    sudo dnf update
    for (( i=0; i<=$list_var; i++ ))
    do
    sudo dnf install ${app_list[i]}
    done
elif [ $pm=pacman ]; then
    sudo pacman -Syu
    for (( i=0; i<=$list_var; i++ ))
    do
    sudo pacman -S ${app_list[i]}
    done
else
    echo "Unkown package manager. Aborting"
fi
