#!/bin/bash

release_file=/etc/os-release

#default logfile : /var/log/*
errorfile=${HOME}/.log/updater_error.log
logfile=${HOME}/.log/updater.log

if grep -q "Arch" $release_file
then
    # The host is based on Arch, run the pacman update command
    sudo pacman -Syu 1>>$logfile 2>>$errorfile
    if [ $? -ne 0 ]
    then
        echo "An error occured, please check the $errorlog file."
    fi
fi

if grep -q "Debian" $release_file || grep -q "Ubuntu" $release_file
then
    # The host is based on Debian & Ubuntu, run the apt version of the command
    sudo apt update
    if [ $? -ne 0 ]
    then
        echo "An error occured, please check the $errorlog file."
    fi
    sudo apt dist-upgrade
    if [ $? -ne 0 ]
    then
        echo "An error occured, please check the $errorlog file."
    fi
fi

if grep -q "openSUSE" $release_file
then
    # The host is based on openSUSE, run the zypper refresh command
    sudo zypper ref
    if [ $? -ne 0 ]
    then
        echo "An error occured, please check the $errorlog file."
    fi
    sudo zypper up
    if [ $? -ne 0 ]
    then
        echo "An error occured, please check the $errorlog file."
    fi
fi

if grep -q "Red Hat" $release_file || grep -q "CentOS" $release_file
then
   # The host is based on RedHat, run the yum update command
   sudo yum update
   if [ $? -ne 0 ]
    then
        echo "An error occured, please check the $errorlog file."
    fi
    if [ $? -ne 0 ]
    then
        echo "An error occured, please check the $errorlog file."
    fi
fi
