#!/bin/bash

echo "Installing Fail2Ban..."
sudo apt update
sudo apt install fail2ban -y

echo "Configuring Fail2Ban..."
sudo bash -c 'cat > /etc/fail2ban/jail.local <<EOF
[sshd]
enabled = true
port = 22
logpath = /var/log/auth.log
maxretry = 5
bantime = 600
EOF'

echo "Restarting Fail2Ban..."
sudo systemctl restart fail2ban

echo "Fail2Ban setup complete"
