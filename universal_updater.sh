#!/bin/bash

#Check which package manager is installed
#Then do the update process for that package manager
if command -v apt >/dev/null
then
    sudo apt update
    sudo apt upgrade
elif command -v dnf >/dev/null
then
    sudo dnf upgrade
elif command -v pacman >/dev/null
then
    sudo pacman -Syu
fi
