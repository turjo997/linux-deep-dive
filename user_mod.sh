#!/bin/bash

#remove the users if it already exist

for user in developer devuser; do
    if id "$user" &>/dev/null; then
        echo "Removing existing user: $user"
        sudo userdel -r "$user" &>/dev/null
    fi
done


#remove the groups if it already exist

for group in developer devgroup; do
    if getent group "$group" &>/dev/null; then
        echo "Removing existing group: $group"
        sudo groupdel "$group" &>/dev/null
    fi
done


#Create a new user named developer.
sudo useradd developer

#Set the home directory of the user developer to /home/developer_home.
sudo usermod -d /home/developer_home developer

#Assign the shell /bin/sh to the user developer.
sudo usermod -s /bin/sh developer

#Verify and display the developer user's information.
echo -e "\nUser (developer) information: "
cat /etc/passwd | grep developer

#Change the username of the user developer to devuser.
sudo usermod -l devuser -d /home/developer_home -m developer

#Add the devuser to a group named devgroup.
sudo groupadd devgroup
sudo usermod -aG devgroup devuser

#Set the password of the devuser to devpass.
sudo passwd devuser

# Verify and display the changes made to the user.
echo -e "\nUser (devuser) information: "
cat /etc/passwd | grep devuser
