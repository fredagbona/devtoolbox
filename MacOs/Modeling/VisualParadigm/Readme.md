# Visual Paradigm Community Edition Installation for macOS

This Bash script automates the installation of Visual Paradigm Community Edition, a UML, SysML and ERD modeling platform for database and software design, on macOS systems. It installs the Community Edition via Homebrew Cask.

## Usage

1. Open a terminal on your macOS system.
2. Download the `installVisualParadigm.sh` script or clone this repository.
3. Give the script execution permissions with the command `chmod +x installVisualParadigm.sh`.
4. Execute the script with the command:

   `./installVisualParadigm.sh`

5. The script will automatically install Visual Paradigm Community Edition via Homebrew.
6. You will see a message "Visual Paradigm Installed" indicating the successful installation.

## Notes

- An active internet connection is required to download Visual Paradigm Community Edition.
- Homebrew must be installed on your system (`https://brew.sh`). The script uses `brew install --cask visual-paradigm-ce` from the official Homebrew Cask.
- This script does not require superuser privileges for the brew command itself, but Homebrew may prompt for permissions if needed.
- Ensure you have enough free space to download and install the application.

## Disclaimer

- This script is provided as is, without any warranty. Use of this script is at your own risk.
- Visual Paradigm Community Edition is free for non-commercial use only. Diagrams include a small watermark.

---
