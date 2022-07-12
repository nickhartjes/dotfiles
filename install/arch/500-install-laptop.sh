#!/bin/bash

source ~/.dotfiles/install/arch/functions.sh

echo "################################################################"
echo "################### installing gnome software"
echo "################################################################"

install gnome

# For Intel TigerLake sound drivers
install sof-firmware
install lm_sensors

# Enable Bluetooth
sudo systemctl enable bluetooth.service

# Disable nvidia-suspend
sudo systemctl disable nvidia-{resume,hibernate,suspend}.service
sudo systemctl stop nvidia-{resume,hibernate,suspend}.service  # for good measure, although they should be stopped

aurinstall pop-gtk-theme
aurinstall pop-icon-theme

# Window Titles: Fira Sans SemiBold 10
# Interface: Fira Sans Book 10
# Documents: Roboto Slab Regular 11
# Monospace: Fira Mono Regular 11
aurinstall ttf-fira-sans
aurinstall ttf-fira-mono
aurinstall ttf-roboto-slab

aurinstall gnome-shell-extension-freon
aurinstall gnome-shell-extension-pop-shell-bin
aurinstall gnome-shell-extension-caffeine-git
aurinstall gnome-shell-extension-timepp-git



echo "################################################################"
echo "################### gnome software installed"
echo "################################################################"
echo ""
