# System Upgrade Script

This Bash script allows you to upgrade your Debian or Ubuntu-based system to the latest version using the `do-release-upgrade` command. It automates the necessary steps to install the `update-manager-core` package, update the system, and perform the release upgrade.

## Usage

1. Open a terminal on your Debian or Ubuntu system.
2. Download the script or clone his repository from here.
3. Ensure that the script has execution permissions using the command `chmod +x script.sh`.
4. Execute the script using the following command:

`sudo ./script.sh`


5. Follow the instructions displayed on the screen.
6. The script will install the `update-manager-core` package if not already installed, update the system using `apt update && apt upgrade`, and then perform the release upgrade using `do-release-upgrade`.

## Note

- It is recommended to take a backup of your important data before performing a system upgrade.
- The upgrade process may take some time depending on the speed of your internet connection and the size of the upgrade.

## Disclaimer

- This script is provided as is, without any warranty. Use of this script is at your own risk.

---

