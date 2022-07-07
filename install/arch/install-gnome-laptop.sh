#!/bin/bash

echo "################################################################"
echo "################### Start installing software "
echo "################################################################"
echo ""

sh ~/.dotfiles/install/arch/100-install-core-software.sh  
sh ~/.dotfiles/install/arch/200-install-desktop-software.sh  
sh ~/.dotfiles/install/arch/300-install-cli-software.sh
sh ~/.dotfiles/install/arch/400-install-gnome.sh
sh ~/.dotfiles/install/arch/500-install-laptop.sh
sh ~/.dotfiles/install/arch/600-install-development.sh

echo "################################################################"
echo "################### Finished installing software "
echo "################################################################"
echo ""
