#!/bin/bash

#if [ -d "$HOME/flutter" ]; then
#    echo "Flutter est déjà installé dans $HOME/flutter."
#    exit 0
#fi

# Vérifie si flutter est installé
if ! command -v flutter &> /dev/null; then
    echo "Démarrage de l'application..."
    sudo apt update
    sudo apt install git -y

    # Vérifie si git est installé
    if ! command -v git &> /dev/null; then
        echo "Git n'est pas installé. Installation de git..."
        sudo apt update
        sudo apt install git -y
    fi

    echo "Updating your apt list"

    apt update -y

    echo "10%"

    echo "install necessary dependencies before installation"

    sleep 1

    apt install openjdk-8-jre
    apt install openjdk-8-jdk
    apt install git
    apt-get install clang cmake ninja-build pkg-config libgtk-3-dev liblzma-dev


    echo "20%"

    echo "installing android tools"

    sleep 1

    cd ~
    mkdir temp && cd temp
    # Télécharge Flutter depuis le référentiel Git
    echo "Téléchargement de Flutter depuis le référentiel Git..."
    git clone https://github.com/flutter/flutter.git -b stable "$HOME/flutter"

    # Ajoute Flutter au PATH
    echo "Configuration de Flutter dans le PATH..."
    echo "export PATH=\"\$PATH:\$HOME/flutter/bin\"" >> ~/.bashrc
    source ~/.bashrc

    # Vérifie si flutter doctor doit être exécuté après l'installation
    read -p "Souhaitez-vous exécuter 'flutter doctor' pour terminer l'installation ? (oui/non) " response
    if [[ "$response" =~ ^([oO][uU][iI]|[yY][eE][sS])$ ]]; then
        flutter doctor
    fi

    echo "L'installation de Flutter est terminée. Redémarrez votre terminal ou exécutez 'source ~/.bashrc' pour appliquer les modifications."
fi