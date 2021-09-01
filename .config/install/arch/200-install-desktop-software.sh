#!/bin/bash

source ./functions.sh

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
install teams

aurinstall authy
aurinstall lens-bin
aurinstall joplin-desktop

install firefox
install chromium

aurinstall alacritty

aurinstall insync

aurinstall bitwarden-bin
aurinstall bitwarden-cli

# IDE's and Software
aurinstall intellij-idea-ultimate-edition
aurinstall visual-studio-code-bin
aurinstall sublime-text-4
aurinstall gitahead-bin

aurinstall pamac-manager
aurinstall pamac-tray
install pavucontrol

echo "################################################################"
echo "################### desktop software installed"
echo "################################################################"
echo ""