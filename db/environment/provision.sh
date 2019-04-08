#!/bin/bash
# set -e
# Update the sources list
echo Checking for update
sudo yum check-update

# upgrade any packages available
echo Installing required update
sudo yum update -y

# Install GNU compiler
echo -e "\e[1m\e[34mInstalling GCC"
sudo yum install gcc -y

# Install Python setup tools
echo Installing Python setup tools
sudo yum install python-setuptools -y

# Install easy Install pip
echo Installing pip using easy Install
sudo easy_install pip

# Install Python development library
echo Installing Python development library
sudo yum install python-devel -y

#Install epel release
echo Installing Epel release
sudo yum install epel-release -y

#Install Ansible
echo Installing Ansible
sudo yum install ansible -y
