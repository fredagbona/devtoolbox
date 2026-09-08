#!/bin/bash
ARCH=$(dpkg --print-architecture)
curl -fL -o cursor.deb "https://downloads.cursor.com/production/latest/linux/${ARCH}/deb"
apt install ./cursor.deb
rm -f cursor.deb
echo "Cursor Installed"
exit 0