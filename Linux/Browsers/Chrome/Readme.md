# Google Chrome Installation

This Bash script automates the installation of Google Chrome on a Debian or Ubuntu-based system. It updates the package lists, resolves dependencies, downloads the Google Chrome package, installs it using `dpkg`, and finally launches Google Chrome.

## Usage

1. Open a terminal on your Debian or Ubuntu system.
2. Download the script or clone his repository from here.
3. Ensure that the script has execution permissions using the command `chmod +x script.sh`.
4. Execute the script using the following command:

`sudo ./script.sh`


5. Follow the instructions displayed on the screen.
6. The script will update the package lists using `apt-get update`, resolve dependencies using `apt-get install -f`, download the Google Chrome package using `wget`, install the package using `dpkg`, and remove the downloaded package using `rm`.
7. After installation, the script will launch Google Chrome using the `google-chrome` command.

## Note

- The installation process requires an active internet connection.
- Make sure to run the script with superuser privileges (e.g., using `sudo`) to install and configure Google Chrome.
- Google Chrome is only available for 64-bit systems (`amd64` architecture) in this script. Adjust the download link if you are using a different architecture.
- For the best experience, Google Chrome recommends enabling hardware acceleration in your browser settings.

## Disclaimer

- This script is provided as is, without any warranty. Use of this script is at your own risk.

---


