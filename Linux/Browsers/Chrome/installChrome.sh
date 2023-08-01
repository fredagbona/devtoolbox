#!/bin/bash

echo "------------------------------------------------------------------------------"
echo "apt-get update"
echo "------------------------------------------------------------------------------"
apt-get update

echo "------------------------------------------------------------------------------"
echo "apt-get upgrade"
echo "------------------------------------------------------------------------------"
apt-get upgrade

echo "------------------------------------------------------------------------------"
echo "wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb"
echo "------------------------------------------------------------------------------"
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

echo "------------------------------------------------------------------------------"
echo "dpkg -i --force-depends google-chrome-stable_current_amd64.deb"
echo "------------------------------------------------------------------------------"
dpkg -i --force-depends google-chrome-stable_current_amd64.deb

echo "------------------------------------------------------------------------------"
echo "rm google-chrome-stable_current_amd64.deb"
echo "------------------------------------------------------------------------------"
rm google-chrome-stable_current_amd64.deb

echo "Chrome Successfully Installed "

echo "------------------------------------------------------------------------------"
echo "google-chrome"
echo "------------------------------------------------------------------------------"
google-chrome