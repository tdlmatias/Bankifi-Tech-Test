#!/bin/bash

sudo apt upgrade -y
sudo apt install git -y

# Clone Bash Script into dir 
cd ~/script
git clone https://github.com/redbeard28/install_terraform_packer.git

# Run the Script
cd ~/scripts/install_terraform_packer.sh
chmod 755 install_terraform_packer.sh
./install_terraform_packer.sh
terraform -v

# Install Ansible
sudo apt-get update
sudo apt-get install unzip ansible -y

