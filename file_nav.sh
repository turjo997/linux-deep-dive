#!/bin/bash

#List all elements of the home directory
ls -la ~ > ~/home_list.txt

#Change directory to /var/log and list its contents
cd /var/log
ls -la > ~/var_log.txt

#Find and display the path to bash
echo "Path to bash executable: "
which bash

#Find and display the current shell
echo "Current shell: "
echo $SHELL
