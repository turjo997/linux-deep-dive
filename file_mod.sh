#!/bin/bash

#delete example.txt if it is already present 
if [ -f ~/example.txt ]; then
  rm ~/example.txt
fi

#Create a file named example.txt in the current user's home directory
touch ~/example.txt

#remove the user if it already exist
if id "student" &>/dev/null; then
    sudo deluser student
fi

#Create a new user without a home and shell named student
sudo useradd -M -s /usr/sbin/nologin student

#Change the owner of example.txt to a user named student
sudo chown student ~/example.txt

#Change the group of example.txt to a group named student.
sudo chown :student ~/example.txt

#display user information
echo "Display student user information: "
id student

# Verify and display the permission changes.
echo -e "\nAfter changes permission: "
ls -l ~/example.txt
