#!/bin/bash
add-apt-repository ppa:obsproject/obs-studio
apt update
apt install ffmpeg obs-studio
echo "OBS Studio Installed"
exit 0 