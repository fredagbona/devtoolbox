# Tor Browser Installation

This Bash script automates the installation of the Tor browser on a Debian or Ubuntu-based system. It updates the package lists, install required dependencies, downloads the Tor browser .tar.xz file, extract it, and finally launches Tor.

## Usage

1. Open a terminal on your Debian or Ubuntu system.
2. Go to the folder in which you want to install Tor (a thing like `/home/user/Apps/tor-browser`)
3. Download the script or clone his repository from here.
4. Ensure that the script has execution permissions using the command `chmod +x installTor.sh`.
5. Execute the script using the following command:

`sudo ./installTor.sh`

5. Follow the instructions displayed on the screen.
6. The script will update the package lists using `apt update`, install required dependencies using `apt install xz-utils`, download the Tor browser .tar.xz file using `wget`, extract it using `tar`, and remove the downloaded .tar.xz file using `rm`.
7. After installation, the script will launch the Tor Browser and give you guidance for next launches.

## Note

- The installation process requires an active internet connection.
- Make sure to run the script with superuser privileges (e.g., using `sudo`) to install and configure the Tor browser.
- Tor Browser is only available for 64-bit systems (`amd64` architecture) in this script. Adjust the download link if you are using a different architecture.

## Disclaimer

- This script is provided as is, without any warranty. Use of this script is at your own risk.

---
