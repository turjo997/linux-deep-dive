#!/bin/bash

#Create a file named original.txt in the current user's home directory

for file in  original.txt softlink.txt datafile.txt hardlink.txt file_list.txt; do
   rm -f ~/$file  
done

touch ~/original.txt
echo "This is original.txt" > ~/original.txt

#Create a symbolic link named softlink.txt pointing to original.txt
ln -s ~/original.txt ~/softlink.txt

#Verify and display the symbolic link
echo -e "\n Softlink.txt content : "
cat ~/softlink.txt
ls -al ~/ | grep "softlink.txt"


#Delete the original file original.txt
rm ~/original.txt

#Verify and display the status of the symbolic link
echo -e "\n Softlink.txt content after deletion of original.txt : "
cat ~/softlink.txt
ls -al ~/ | grep "softlink.txt"



#Create a file named datafile.txt in the current user's home directory
touch ~/datafile.txt
echo "This is datafile.txt" > ~/datafile.txt


#Create a hard link named hardlink.txt pointing to datafile.txt
ln ~/datafile.txt ~/hardlink.txt

#Verify and display the hard link
echo -e "\n Hardlink.txt content : "
cat ~/hardlink.txt
ls -al ~/ | grep "hardlink.txt"


#Display the inode of both datafile.txt and hardlink.txt
echo -e "\n inode of both datafile and hardlink"
ls -i ~/datafile.txt
ls -i ~/hardlink.txt

#Delete the original file datafile.txt
rm ~/datafile.txt

#Verify and display the status of the hard link
echo -e "\n Hardlink.txt content after deletion of datafile.txt : "
cat ~/hardlink.txt
ls -al ~/ | grep "hardlink.txt"

#Find all .txt files in the current user's home directory and
#save them in a file named file_list.txt

find ~/ -name "*.txt" | sort > ~/file_list.txt

echo -e "\n file_list.txt content: "
cat ~/file_list.txt


