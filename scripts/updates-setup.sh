#!/bin/bash

echo "Installing unattended-upgrades..."
sudo apt update
sudo apt install unattended-upgrades -y

echo "Enabling automatic updates..."
sudo dpkg-reconfigure -f noninteractive unattended-upgrades

echo "Automatic updates enabled"
