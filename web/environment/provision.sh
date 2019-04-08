#!/bin/bash

# Update the sources list
echo Checking for update
sudo yum check-update

# upgrade any packages available
echo Installing required update
sudo yum update -y


#Install epel release
echo Installing Epel release
sudo yum install epel-release -y

#Install Ansible
echo Installing Ansible
sudo yum install ansible -y
