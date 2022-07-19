#!/bin/bash

source ~/.dotfiles/install/arch/functions.sh

echo "################################################################"
echo "################### installing laptop software"
echo "################################################################"

# For Intel TigerLake sound drivers
install sof-firmware
install lm_sensors

# Enable Bluetooth
sudo systemctl enable bluetooth.service

# Disable nvidia-suspend
sudo systemctl disable nvidia-{resume,hibernate,suspend}.service
sudo systemctl stop nvidia-{resume,hibernate,suspend}.service

aurinstall thinkfan-git
aurinstall thinkfan-ui


echo "################################################################"
echo "################### gnome laptop installed"
echo "################################################################"
echo ""
