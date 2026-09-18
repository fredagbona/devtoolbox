# Visual Paradigm Community Edition Installation

This Bash script automates the installation of Visual Paradigm Community Edition, a UML, SysML and ERD modeling platform for database and software design, on a Debian or Ubuntu-based system. It downloads the official InstallFree tar.gz, extracts it to `/opt`, sets execute permissions and creates a symlink for terminal launch.

## Usage

1. Open a terminal on your Debian or Ubuntu system.
2. Download the script or clone his repository from here.
3. Ensure that the script has execution permissions using the command `chmod +x script.sh`.
4. Execute the script using the following command:

`sudo ./installVisualParadigm.sh`


5. Follow the instructions displayed on the screen.
6. The script will automatically download, extract and configure Visual Paradigm in `/opt` and create the `visual-paradigm` symlink.

## Note

- The installation process requires an active internet connection.
- Make sure to run the script with superuser privileges (e.g., using `sudo`) to extract to `/opt` and create the symlink.
- `curl` and `tar` must be available on your system.
- Visual Paradigm Community Edition is free for non-commercial use only.

## Disclaimer

- This script is provided as is, without any warranty. Use of this script is at your own risk.
- Visual Paradigm Community Edition is free for non-commercial use only. Diagrams include a small watermark.
- Please note that the installation may take time depending on your internet connection speed and system performance.

---
