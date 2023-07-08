# Docker Installation

This Bash script automates the installation of Docker Engine on a Debian or Ubuntu-based system. It removes conflicting packages, sets up the Docker repository, installs Docker Engine, and verifies the installation.

## Usage

1. Open a terminal on your Debian or Ubuntu system.
2. Download the script or clone his repository from here.
3. Ensure that the script has execution permissions using the command `chmod +x script.sh`.
4. Execute the script using the following command:

`sudo ./script.sh`


5. Follow the instructions displayed on the screen.
6. The script will remove conflicting packages (`docker.io`, `docker-doc`, `docker-compose`, `podman-docker`, `containerd`, `runc`), set up the Docker repository, install Docker Engine, Docker CLI, containerd.io, Docker Buildx plugin, and Docker Compose plugin using `apt-get`.
7. After installation, the script will verify the Docker Engine installation by running the hello-world image.

## Note

- The installation process requires an active internet connection.
- Make sure to run the script with superuser privileges (e.g., using `sudo`) to install and configure Docker.
- Docker requires certain hardware virtualization features to be enabled on your system. Ensure that virtualization is supported and enabled in your BIOS/UEFI settings.
- Refer to the official Docker documentation for more information on Docker usage and configuration.

## Disclaimer

- This script is provided as is, without any warranty. Use of this script is at your own risk.

---

