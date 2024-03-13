# Microsoft Edge Installation for Linux

This Bash script automates the process of installing Microsoft Edge on Debian-based Linux systems (like Ubuntu). It adds the Microsoft Edge repository, updates the package list, and installs the latest stable version of Microsoft Edge.

## Usage

1. Open a terminal on your Linux system.
2. Download the `install_edge_linux.sh` script or clone this repository.
3. Give the script execution permissions with the command `chmod +x install_edge_linux.sh`.
4. Execute the script with the command (you might be prompted for your password):

   `sudo ./install_edge_linux.sh`

5. Microsoft Edge will be downloaded and installed.

## Notes

- An active internet connection is required to download and install Microsoft Edge.
- This script is intended for Debian-based distributions. For other distributions, the installation steps might differ.
- Ensure you have `wget` and `gpg` installed on your system for the script to work correctly.

## Disclaimer

- This script is provided as is, without any warranty. Use of this script is at your own risk.
