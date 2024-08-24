#!/bin/bash

sleep 30  # Wait for cloud-init and other services to settle

# Set non-interactive mode for apt-get to avoid debconf prompts
export DEBIAN_FRONTEND=noninteractive

# Install Apache2
sudo apt-get update -y
sudo apt-get install -y apache2

# Start and enable Apache2 service
sudo systemctl start apache2
sudo systemctl enable apache2
