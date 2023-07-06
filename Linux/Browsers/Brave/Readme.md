# Brave Browser Installation

This Bash script automates the installation of the Brave Browser on a Debian or Ubuntu-based system. It installs the necessary dependencies, adds the Brave Browser repository keyring, configures the repository, updates the package lists, and installs the Brave Browser.

## Usage

1. Open a terminal on your Debian or Ubuntu system.
2. Download the script or clone his repository from here.
3. Ensure that the script has execution permissions using the command `chmod +x script.sh`.
4. Execute the script using the following command:

`sudo ./script.sh`


5. Follow the instructions displayed on the screen.
6. The script will install the `curl` package using `apt install curl`, download the Brave Browser repository keyring using `curl`, add the keyring to `/usr/share/keyrings/brave-browser-archive-keyring.gpg`, configure the Brave Browser repository in `/etc/apt/sources.list.d/brave-browser-release.list`, update the package lists using `apt update`, and finally install the Brave Browser using `apt install brave-browser`.

## Note

- The installation process requires an active internet connection.
- After installation, you can launch the Brave Browser either by searching for it in the applications menu or by running `brave-browser` command in the terminal.

## Disclaimer

- This script is provided as is, without any warranty. Use of this script is at your own risk.

---
