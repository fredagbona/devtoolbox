#!/bin/bash

# Brave Browser download..
curl -L "https://laptop-updates.brave.com/latest/osx" > ~/Downloads/Brave-Browser.dmg

# Montage de l'image disque...
hdiutil attach ~/Downloads/Brave-Browser.dmg

# Installation de Brave Browser...
cp -r /Volumes/Brave\ Browser/Brave\ Browser.app /Applications/

# Nettoyage...
hdiutil detach /Volumes/Brave\ Browser/
rm ~/Downloads/Brave-Browser.dmg
