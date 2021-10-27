#!/bin/bash

source ~/.dotfiles/install/arch/functions.sh

echo "################################################################"
echo "################### installing leftwm software"
echo "################################################################"

install xorg
install xorg-xinit
aurinstall leftwm
aurinstall leftwm-theme
install lightdm-webkit2-greeter
install picom
install feh
install rofi
install dmenu
aurinstall polybar

echo "################################################################"
echo "################### leftwm software installed"
echo "################################################################"
echo ""
