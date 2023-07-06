# ASDF Installation Script

This Bash script automates the installation of ASDF, a version manager for multiple programming languages, on a Debian or Ubuntu-based system. It clones the ASDF repository, sets up the necessary environment variables, and configures ASDF for usage.

## Usage

1. Open a terminal on your Debian or Ubuntu system.
2. Download the script or clone his repository from here.
3. Ensure that the script has execution permissions using the command `chmod +x script.sh`.
4. Execute the script using the following command:

`sudo ./script.sh`


5. Follow the instructions displayed on the screen.
6. The script will clone the ASDF repository to `~/.asdf` using `git clone`, append the necessary lines to `~/.bashrc` for ASDF setup, configure the ASDF behavior in `~/.asdfrc`, set the `EDITOR` environment variable to Visual Studio Code, and restart the shell using `exec $SHELL` to apply the changes.

## Note

- Make sure you have Git installed on your system for cloning the ASDF repository.
- After installation, you can use ASDF to manage multiple programming language versions. Refer to the ASDF documentation for further information on how to use it.

## Disclaimer

- This script is provided as is, without any warranty. Use of this script is at your own risk.

---
# ASDF Installation

This Bash script automates the installation of ASDF, a version manager for multiple programming languages, on a Debian or Ubuntu-based system. It clones the ASDF repository, sets up the necessary environment variables, and configures ASDF for usage.

## Usage

1. Open a terminal on your Debian or Ubuntu system.
2. Download the script or copy its content into a new file.
3. Ensure that the script has execution permissions using the command `chmod +x script.sh`.
4. Execute the script using the following command:

`sudo ./script.sh`


5. Follow the instructions displayed on the screen.
6. The script will clone the ASDF repository to `~/.asdf` using `git clone`, append the necessary lines to `~/.bashrc` for ASDF setup, configure the ASDF behavior in `~/.asdfrc`, set the `EDITOR` environment variable to Visual Studio Code, and restart the shell using `exec $SHELL` to apply the changes.

## Note

- Make sure you have Git installed on your system for cloning the ASDF repository.
- After installation, you can use ASDF to manage multiple programming language versions. Refer to the ASDF documentation for further information on how to use it.

## Disclaimer

- This script is provided as is, without any warranty. Use of this script is at your own risk.

---
