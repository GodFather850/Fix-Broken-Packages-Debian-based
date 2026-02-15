#!/bin/bash
# Created By GodFather
# Clean & Update your System for get broken packages
sudo apt autoremove -y
sudo apt autoclean
sudo apt update

# Reconfigure your PKGS
sudo apt --fix-broken install
sudo dpkg --configure -a

# is it fixed
sudo apt upgrade -y

# Otherwise, if it was not fixed:
sudo apt install --reinstall dpkg
sudo apt install --reinstall $(dpkg -l | awk '/^ii/ {print $2}')
sudo rm -rf /var/crash/*

# reboot after fix:
if [[ "$?" -eq 0 ]]; then
    reboot
fi
