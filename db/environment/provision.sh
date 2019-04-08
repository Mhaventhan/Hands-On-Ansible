#!/bin/bash

# Update the sources list
echo Checking for update
sudo yum check-update

# upgrade any packages available
echo Installing required update
sudo yum update -y

# Install GNU compiler
echo Installing GNU compiler
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

# Installing Ansible using pip
echo Installing Ansbile using pip
sudo pip install ansible
