#!/bin/bash

source ~/.dotfiles/install/arch/functions.sh

echo "################################################################"
echo "################### installing desktop software"
echo "################################################################"

# Desktop Software from the Arch Linux repository
install flameshot
aurinstall ulauncher
aurinstall caffeine-ng

install vlc

# Communication
install slack-desktop
# install teams

aurinstall authy
aurinstall lens-bin

install firefox
install chromium
install brave-bin
install okular

aurinstall alacritty

aurinstall obsidian

aurinstall bitwarden-bin
aurinstall bitwarden-cli

aurinstall pamac-manager
install pavucontrol

aurinstall signal-desktop
aurinstall telegram-desktop

echo "################################################################"
echo "################### desktop software installed"
echo "################################################################"
echo ""
