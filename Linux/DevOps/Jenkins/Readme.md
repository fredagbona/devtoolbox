Jenkins LTS Installation
This Bash script automates the installation of Jenkins Long-Term Support (LTS) version on a Debian or Ubuntu-based Linux system. It updates the system, installs Java (a prerequisite for Jenkins), adds the Jenkins repository, installs Jenkins, starts the service, and displays the initial admin password.

Usage
Open a terminal on your Debian or Ubuntu system.
Create a new script file using nano install_jenkins.sh or your preferred text editor.
Copy the Jenkins installation script content into this file.
Give execution permissions to the script with chmod +x install_jenkins.sh.
Execute the script as a superuser: sudo ./install_jenkins.sh.
After the script execution, Jenkins will be installed and started. The initial admin password will be displayed on the terminal.
Access Jenkins at http://<your_server_ip>:8080 and complete the initial setup using the provided admin password.
Post-installation
After completing the initial setup in Jenkins, you can start configuring it according to your needs. This includes setting up jobs, installing additional plugins, and configuring system settings.

Note
This script is intended for Debian or Ubuntu-based distributions. For other Linux distributions, modifications might be necessary.
Always refer to the official Jenkins documentation for the latest instructions and best practices.