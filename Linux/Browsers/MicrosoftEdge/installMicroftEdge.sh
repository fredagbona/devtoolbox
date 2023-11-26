#!/bin/bash

# "Adding the Microsoft Edge repository..."
wget -qO - https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/edge stable main" > /etc/apt/sources.list.d/microsoft-edge-dev.list'
sudo rm microsoft.gpg

# "Updating package list and installing Microsoft Edge..."
sudo apt update
sudo apt install -y microsoft-edge-stable

# Done "Microsoft Edge has been successfully installed."
