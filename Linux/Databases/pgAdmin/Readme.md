# pgAdmin 4 Installation

This Bash script automates the installation of pgAdmin 4, a popular web-based administration and development platform for PostgreSQL, on a Debian or Ubuntu-based system. It sets up the repository, installs the public key, configures the repository, updates the package lists, and finally installs pgAdmin 4.

## Usage

1. Open a terminal on your Debian or Ubuntu system.
2. Download the script or clone his repository from here.
3. Ensure that the script has execution permissions using the command `chmod +x script.sh`.
4. Execute the script using the following command:

`sudo ./script.sh`


5. Follow the instructions displayed on the screen.
6. The script will download the public key for the pgAdmin 4 repository using `curl`, install the key using `gpg`, create the repository configuration file in `/etc/apt/sources.list.d/pgadmin4.list`, update the package lists using `apt update`, and finally install pgAdmin 4 using `apt install pgadmin4`.

## Note

- The installation process requires an active internet connection.
- Make sure to run the script with superuser privileges (e.g., using `sudo`) to install and configure pgAdmin 4.
- After installation, you can access pgAdmin 4 in both desktop and web modes. To configure the web mode, use the provided script `/usr/pgadmin4/bin/setup-web.sh`.

## Disclaimer

- This script is provided as is, without any warranty. Use of this script is at your own risk.

