#!/bin/bash

release_file=/etc/os-release

#default logfile : /var/log/*
#errorfile=/var/log/update_error.log
#logfile=/var/log/updater.log
errorfile=${HOME}/.log/updater_error.log
logfile=${HOME}/.log/updater.log

check_exit_status() {
    if [ $? -eq 0 ] 
    then
        echo "An error occurred, please check the $errorlog file."
    fi
}

if grep -q "Arch" $release_file
then
    # The host is based on Arch, run the pacman update command
    sudo pacman -Syu 1>>$logfile 2>>$errorfile
    check_exit_status
fi

if grep -q "Debian" $release_file || grep -q "Ubuntu" $release_file
then
    # The host is based on Debian & Ubuntu, run the apt version of the command
    sudo apt update 1>>$logfile 2>>$errorfile
    check_exit_status

    sudo apt dist-upgrade 1>>$logfile 2>>$errorfile
    check_exit_status
fi

if grep -q "openSUSE" $release_file
then
    # The host is based on openSUSE, run the zypper refresh command
    sudo zypper ref 1>>$logfile 2>>$errorfile
    check_exit_status

    sudo zypper up 1>>$logfile 2>>$errorfile
    check_exit_status
fi

if grep -q "Red Hat" $release_file || grep -q "CentOS" $release_file
then
   # The host is based on RedHat, run the yum update command
    sudo yum update 1>>$logfile 2>>$errorfile
    check_exit_status

    sudo yum upgrade 1>>$logfile 2>>$errorfile
    check_exit_status
fi
