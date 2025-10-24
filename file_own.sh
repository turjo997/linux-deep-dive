#!/bin/bash

#Create a directory named project in the current user's home directory.
mkdir -p ~/project

#delete example.txt if it is already present 
if [ -f ~/project/report.txt ]; then
  rm ~/project/report.txt
fi

#Create a file named report.txt inside the project directory.
touch ~/project/report.txt  

#Set the permissions of report.txt to read and write for the owner,
#and read-only for the group and others.
chmod u=rw,go=r ~/project/report.txt

#Set the permissions of the project directory to read, write, 
#and execute for the owner, and read and execute for the group and others
chmod 755 ~/project

#Verify and display the permission changes.
echo "Display permission changes recursively:"
ls -lR ~/project

echo -e "\nDisplay permission changes for directory itself:"
ls -ld ~/project



