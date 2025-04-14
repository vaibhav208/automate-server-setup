#!/bin/bash

echo "🔧 Starting server setup..."

# Update & upgrade system
sudo apt update && sudo apt upgrade -y

# Install nginx
sudo apt install nginx -y
sudo systemctl enable nginx
sudo systemctl start nginx

# Add a new user
read -p "Enter username to create: " newuser
sudo adduser $newuser

# Add user to sudo group
sudo usermod -aG sudo $newuser

# Install essential packages
sudo apt install git curl ufw -y

# Enable firewall & allow SSH and HTTP
sudo ufw allow OpenSSH
sudo ufw allow 'Nginx Full'
sudo ufw --force enable

echo "✅ Server setup complete!"

