#!/bin/bash

echo "------------------------------------------------------------------------------"
echo "apt update"
echo "------------------------------------------------------------------------------"
apt update

echo "------------------------------------------------------------------------------"
echo "apt upgrade"
echo "------------------------------------------------------------------------------"
apt upgrade

echo "------------------------------------------------------------------------------"
echo "apt install xz-utils"
echo "------------------------------------------------------------------------------"
apt install xz-utils

echo "------------------------------------------------------------------------------"
echo "wget https://www.torproject.org/dist/torbrowser/13.0.6/tor-browser-linux-x86_64-13.0.6.tar.xz"
echo "------------------------------------------------------------------------------"
wget https://www.torproject.org/dist/torbrowser/13.0.6/tor-browser-linux-x86_64-13.0.6.tar.xz

echo "------------------------------------------------------------------------------"
echo "tar -xf tor-browser-linux-x86_64-13.0.6.tar.xz"
echo "------------------------------------------------------------------------------"
tar -xf tor-browser-linux-x86_64-13.0.6.tar.xz

echo "------------------------------------------------------------------------------"
echo "rm tor-browser-linux-x86_64-13.0.6.tar.xz"
echo "------------------------------------------------------------------------------"
rm tor-browser-linux-x86_64-13.0.6.tar.xz

echo "Tor Successfully Installed"

echo "To start the tor browser, cd to ${PWD}/tor-browser and run the start file (start-tor-browser.desktop)"