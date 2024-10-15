#!/bin/bash

sudo yum update -y
sudo yum install -y nano
sudo sed -i 's/^#Port 22/Port 22/' /etc/ssh/sshd_config
sudo sed -i 's/^#PasswordAuthentication yes/PasswordAuthentication yes/' /etc/ssh/sshd_config
echo "root:anass1996AQ@" | sudo chpasswd
sudo systemctl restart sshd

echo "SSH configuration updated and root password set."
