#!/bin/bash

# Update the system
sudo apt-get update

# Install Java (required for Jenkins)
sudo apt-get install -y openjdk-11-jdk

# Add the Jenkins repository to the system
wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -

# Add the Jenkins repository to the sources list
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'

# Update the system after adding the repository
sudo apt-get update

# Install Jenkins
sudo apt-get install -y jenkins

# Start Jenkins
sudo systemctl start jenkins

# Enable Jenkins to start on boot
sudo systemctl enable jenkins

# Display the status of Jenkins
sudo systemctl status jenkins

# Output initial admin password
echo "Initial Admin Password:"
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
