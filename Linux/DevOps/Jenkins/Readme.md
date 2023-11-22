# Jenkins LTS Installation

This Bash script automates the installation of Jenkins Long-Term Support (LTS) version on a Debian or Ubuntu-based Linux system. It updates the system, installs Java (a prerequisite for Jenkins), adds the Jenkins repository, installs Jenkins, starts the service, and displays the initial admin password.

## Usage

1. **Open a Terminal**: On your Debian or Ubuntu system.

2. **Create Script File**: Use the command `nano install_jenkins.sh` (or your preferred text editor) to create a new script file.

3. **Copy Script Content**: Copy the Jenkins installation script content into this file.

4. **Make Script Executable**: Set execution permissions with `chmod +x install_jenkins.sh`.

5. **Execute Script**: Run the script as a superuser with `sudo ./install_jenkins.sh`.

6. **Complete Installation**: After execution, Jenkins will be installed and started. The initial admin password will be displayed in the terminal.

7. **Access Jenkins**: Go to `http://<your_server_ip>:8080` to complete the initial setup using the displayed admin password.

## Post-installation

After the initial setup, configure Jenkins according to your requirements, such as setting up jobs, installing plugins, and configuring system settings.

## Note

- This script is tailored for Debian or Ubuntu distributions. For other Linux distributions, modifications to the script might be necessary.
- Always consult the [official Jenkins documentation](https://www.jenkins.io/doc/) for the latest instructions and best practices.
