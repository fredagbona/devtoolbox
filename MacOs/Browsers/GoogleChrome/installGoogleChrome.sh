

# Téléchargement de Google Chrome...
curl -L "https://dl.google.com/chrome/mac/stable/GGRO/googlechrome.dmg" > ~/Downloads/googlechrome.dmg

# Montage de l'image disque...
hdiutil mount ~/Downloads/googlechrome.dmg

# Installation de Google Chrome...
cp -r /Volumes/Google\ Chrome/Google\ Chrome.app /Applications/

# Nettoyage...
hdiutil unmount /Volumes/Google\ Chrome/
rm ~/Downloads/googlechrome.dmg
