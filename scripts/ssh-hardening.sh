#!/bin/bash

echo "Configuring SSH security..."

sudo sed -i 's/#PasswordAuthentication yes/PasswordAuthentication no/' /etc/ssh/sshd_config
sudo sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin no/' /etc/ssh/sshd_config

echo "Restarting SSH..."
sudo systemctl restart ssh

echo "SSH hardening complete"
