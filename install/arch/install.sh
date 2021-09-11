#!/bin/bash

echo "################################################################"
echo "################### Start installing software "
echo "################################################################"
echo ""

sh ~/.dotfiles/install/arch/100-install-core-software.sh  
sh ~/.dotfiles/install/arch/200-install-desktop-software.sh  
sh ~/.dotfiles/install/arch/300-install-cli-software.sh
sh ~/.dotfiles/install/arch/400-install-awesomewm.sh

echo "################################################################"
echo "################### Finished installing software "
echo "################################################################"
echo ""