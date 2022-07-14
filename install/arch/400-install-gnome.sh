#!/bin/bash

source ~/.dotfiles/install/arch/functions.sh

echo "################################################################"
echo "################### installing laptop software"
echo "################################################################"

install gnome
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

aurinstall gnome-shell-extension-nordvpn-connect-git

echo "################################################################"
echo "################### gnome laptop installed"
echo "################################################################"
echo ""
