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

git clone --recurse-submodules --remote-submodules --depth 1 -j 2 https://github.com/lcpz/awesome-copycats.git
mv -bv awesome-copycats/{*,.[^.]*} ~/.config/awesome
rm -rf awesome-copycats

echo "################################################################"
echo "################### leftwm software installed"
echo "################################################################"
echo ""
