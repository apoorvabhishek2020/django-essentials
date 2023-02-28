#!/bin/bash

# **************************************************************************************************
# Note :
# This installation script is valid for AWS EC2 Server built on Amazon Linux 2 AMI.
# The validity of the script cannot be guarenteed to the other machines.
# However, with minimal changes, it can work for other Machines and Unix based Operating Systems.
# **************************************************************************************************

# Setting commands to stop executing if any command fails to execute correctly.
set -e

# Updating OS
sudo yum -y update

# Installing and enabling Docker
sudo yum install -y docker
sudo systemctl start docker
sudo systemctl enable docker
sudo chmod 777 /var/run/docker.sock
docker ps

# Installing Docker Compose v2.16.0
wget https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m)
sudo mv docker-compose-$(uname -s)-$(uname -m) /usr/local/bin/docker-compose
sudo chmod -v +x /usr/local/bin/docker-compose
docker-compose --version

# Installing Git
sudo yum install -y git

# Generating SSH Keys for GitHub Authentication
# Uncomment the below two lines and update your github account email to the below line.
# ssh-keygen -t ed25519 -C "github.email@example.com"
# cat /home/ec2-user/.ssh/id_ed25519.pub
# Copy the output to github ssh
