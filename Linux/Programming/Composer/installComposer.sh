#!/bin/bash
sudo apt update
sudo apt-get install curl unzip
sudo apt-get install php php-curl php-zip php-xml
sudo apt-get install php-cli unzip
curl -sS https://getcomposer.org/installer -o /tmp/composer-setup.php
sudo php /tmp/composer-setup.php --install-dir=/usr/local/bin --filename=composer
composer
echo "Composer Successful Installed "
exit 0
