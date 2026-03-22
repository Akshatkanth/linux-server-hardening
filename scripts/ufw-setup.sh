#!/bin/bash

echo "Installing UFW..."
sudo apt update
sudo apt install ufw -y

echo "Allowing SSH..."
sudo ufw allow OpenSSH

echo "Enabling firewall..."
sudo ufw --force enable

echo "UFW setup complete"
