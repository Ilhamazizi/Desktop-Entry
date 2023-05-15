#!/bin/bash

release_file=/etc/os-release

if grep -q "Arch" $release_file
then
    # The host is based on Arch, run the pacman update command
    sudo pacman -Syu
fi

if grep -q "Debian" $release_file || grep -q "Ubuntu" $release_file
then
    # The host is based on Debian & Ubuntu, run the apt version of the command
    sudo apt update
    sudo apt dist-upgrade
fi

if grep -q "openSUSE" $release_file
then
    # The host is based on openSUSE, run the zypper refresh command
    sudo zypper ref
    sudo zypper up
fi

if grep -q "Red Hat" $release_file || grep -d "CentOS" $release_file
then
   # The host is based on RedHat, run the yum update command
   sudo yum update
   sudo yum upgrade

