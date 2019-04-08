#!/bin/bash

# Update the sources list
echo Checking for latest update
sudo apt-get update -y

# upgrade any packages available
echo Installing lastest update
sudo apt-get upgrade -y

# Installing necessary repository
echo Installing necessary repository
sudo apt-add-repository ppa:ansible/ansible

echo Checking for latest update
sudo apt-get update -y

#Install Ansbile
echo Installing Ansbile
sudo apt-get install ansible -y
