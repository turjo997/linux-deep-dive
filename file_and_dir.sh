#!/bin/bash

#create linux_fundamentals in  the home directory
mkdir -p ~/linux_fundamentals

#create sub-directory inside linux_fundamentals
mkdir -p ~/linux_fundamentals/scripts

#create an empty file inside linux_fundamentals
touch ~/linux_fundamentals/example.txt

#copy example.txt to the scripts dir
cp ~/linux_fundamentals/example.txt ~/linux_fundamentals/scripts/

# Ensure the backup directory exists
mkdir -p ~/linux_fundamentals/backup

#move example.txt from linux_fundamentals to linux_fundamentals/backup
mv ~/linux_fundamentals/example.txt ~/linux_fundamentals/backup/

#Change the permissions of example.txt to read and write for the owner, and read-only for the group and others.
chmod u=rw,go=r ~/linux_fundamentals/backup/example.txt

#Verify and display the permission changes.
echo "Display after the permission changes: "
ls -l ~/linux_fundamentals/backup/example.txt
