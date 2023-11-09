#!/bin/bash

# What to backup
backup_files="${HOME}/tmp"

# Where to backup to
dest="/tmp/backup"

# Create archive filename
day=$(date +%A)
hostname=$(hostname -s)
archive_file="$hostname-$day.tgz"

# Print start status message.
echo "backing up $backup_files to $dest/$archive_file"
date
echo

# Backup the file using tar.
tar czf $dest/$archive_file $backup_files

# Print end status message.
echo "=================="
echo " Backup finishing "
echo "=================="

# Long listing of files in $dest to check file size
ls -lh $dest
