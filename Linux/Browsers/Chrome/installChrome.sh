#!/bin/bash

apt-get update && apt-get upgrade

apt-get install -f

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

dpkg -i --force-depends google-chrome-stable_current_amd64.deb

rm google-chrome-stable_current_amd64.deb

echo "Chrome Successful Installed "

google-chrome
