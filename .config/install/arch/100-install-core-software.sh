#!/bin/bash

source ./functions.sh

echo "################################################################"
echo "################### installing core software"
echo "################################################################"

# Basic Core Software from the Arch Linux repository
install base-devel
install git
install openssh

if [ "$HOSTNAME" = "arco-desktop" ]; then
    sudo systemctl disable tlp.service
	remove tlp --noconfirm
fi

# Install paru from git
git clone https://aur.archlinux.org/paru.git ~/.config/.install/.local/paru
cd ~/.config/.install/.local/paru
makepkg -si

echo "################################################################"
echo "################### core software installed"
echo "################################################################"
echo ""