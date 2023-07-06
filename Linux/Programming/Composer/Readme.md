# Composer Installation Script

This Bash script automates the installation of Composer, a dependency management tool for PHP, on a Debian or Ubuntu-based system. It installs the necessary dependencies, downloads Composer, and sets it up for global usage.

## Usage

1. Open a terminal on your Debian or Ubuntu system.
2. Download the script or clone his repository from here.
3. Ensure that the script has execution permissions using the command `chmod +x script.sh`.
4. Execute the script using the following command:
`sudo ./script.sh`


5. Follow the instructions displayed on the screen.
6. The script will update the package lists using `sudo apt update`, install `curl` and `unzip` using `sudo apt-get install curl unzip`, install `php` and `php-curl` using `sudo apt-get install php php-curl`, install `php-cli` and `unzip` using `sudo apt-get install php-cli unzip`, download Composer using `curl`, and finally install Composer globally using `sudo php /tmp/composer-setup.php --install-dir=/usr/local/bin --filename=composer`.

## Note

- Ensure that you have appropriate permissions to install packages and dependencies using `sudo`.
- After installation, you can verify the Composer installation by running `composer` command in the terminal. It should display the Composer version and available commands.
- If you encounter any issues during the installation, refer to the official Composer documentation for troubleshooting.

## Disclaimer

- This script is provided as is, without any warranty. Use of this script is at your own risk.

---


