#!/bin/bash

# "Downloading Microsoft Edge..."
curl -L "https://go.microsoft.com/fwlink/?linkid=2069148" > ~/Downloads/MicrosoftEdge.dmg

# "Mounting the disk image..."
hdiutil attach ~/Downloads/MicrosoftEdge.dmg

# "Installing Microsoft Edge..."
cp -r /Volumes/Microsoft\ Edge/Microsoft\ Edge.app /Applications/

# "Cleaning up..."
hdiutil detach /Volumes/Microsoft\ Edge/
rm ~/Downloads/MicrosoftEdge.dmg

# Done "Microsoft Edge has been successfully installed."
