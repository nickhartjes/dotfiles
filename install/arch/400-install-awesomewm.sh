#!/bin/bash

source ~/.dotfiles/install/arch/functions.sh

echo "################################################################"
echo "################### installing awesomewm software"
echo "################################################################"

install xorg
install xorg-xinit
install awesome
install lightdm
install lightdm-webkit2-greeter
install picom
install feh

echo "################################################################"
echo "################### awesomewm software installed"
echo "################################################################"
echo ""