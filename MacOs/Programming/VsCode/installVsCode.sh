#!/bin/bash

# Télécharge Visual Studio Code pour macOS
curl -L "https://go.microsoft.com/fwlink/?LinkID=620882" > ~/Downloads/VSCode-darwin.zip

# Décompresse l'archive dans le dossier Applications
unzip -q ~/Downloads/VSCode-darwin.zip -d /Applications/

# Nettoie le fichier téléchargé
rm ~/Downloads/VSCode-darwin.zip

echo "VSCode Installed"
