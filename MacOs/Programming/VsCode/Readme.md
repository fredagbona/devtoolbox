# Visual Studio Code Installation for macOS

This Bash script automates the installation of Visual Studio Code (VS Code) on macOS systems. It downloads the VS Code package, unzips it to the Applications folder, and cleans up the downloaded files.

## Usage

1. Open a terminal on your macOS system.
2. Download the script or clone his repository from here.
3. Ensure that the script has execution permissions using the command `chmod +x install_vscode.sh`.
4. Execute the script using the following command:

`./install_vscode.sh`


5. The script will download the VS Code package from the official Microsoft link using `curl`.
6. It will then unzip the downloaded file to the `/Applications` directory using `unzip`.
7. After the installation, the script will remove the downloaded ZIP file.
8. You will see a message "VSCode Installed" indicating the successful installation of Visual Studio Code.


## Note

- An active internet connection is required for the installation process.
- This script does not require superuser privileges, as it installs VS Code to the user's Applications directory.
- Ensure that you have sufficient permissions to write to the /Applications directory.
- The script is designed for macOS systems and may not be compatible with other operating systems.

## Disclaimer

- This script is provided as is, without any warranty. Use of this script is at your own risk. The user is responsible for complying with all applicable licenses and terms of service.

---


