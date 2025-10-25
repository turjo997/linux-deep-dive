#!/bin/bash

#Update repo cache using apt/apt-get
sudo apt update -y

#Install a package named tree
sudo apt install -y tree

#Install the gcloud CLI tool using apt
sudo apt-get update -y

sudo apt-get install -y apt-transport-https ca-certificates gnupg curl

curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo gpg --dearmor -o /usr/share/keyrings/cloud.google.gpg

echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list

sudo apt-get update -y 
sudo apt-get install -y google-cloud-cli

gcloud init


