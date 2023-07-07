# OBS Studio Installation

This Bash script automates the installation of OBS Studio, a popular open-source software for video recording and live streaming, on a Debian or Ubuntu-based system. It adds the OBS Studio PPA, updates the package lists, and installs the necessary packages.

## Usage

1. Open a terminal on your Debian or Ubuntu system.
2. Download the script or clone his repository from here.
3. Ensure that the script has execution permissions using the command `chmod +x script.sh`.
4. Execute the script using the following command:

`sudo ./script.sh`


5. Follow the instructions displayed on the screen.
6. The script will add the OBS Studio PPA using `add-apt-repository`, update the package lists using `apt update`, and install the necessary packages (`ffmpeg` and `obs-studio`) using `apt install`.

## Note

- The installation process requires an active internet connection.
- After installation, you can launch OBS Studio by searching for it in the applications menu or using the `obs-studio` command in the terminal.

## Disclaimer

- This script is provided as is, without any warranty. Use of this script is at your own risk.

---
