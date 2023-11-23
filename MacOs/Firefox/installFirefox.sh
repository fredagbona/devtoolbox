#!/bin/bash

# "Downloading Firefox..."
curl -L "https://download.mozilla.org/?product=firefox-latest&os=osx&lang=en-US" > ~/Downloads/Firefox.dmg

# "Mounting the disk image..."
hdiutil attach ~/Downloads/Firefox.dmg

# "Installing Firefox..."
cp -r /Volumes/Firefox/Firefox.app /Applications/

# "Cleaning up..."
hdiutil detach /Volumes/Firefox/
rm ~/Downloads/Firefox.dmg

# "Done! "Firefox has been successfully installed."
