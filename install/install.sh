#!/bin/bash
#  __   __   __    __  
# |  \ |  | |  |  |  | 
# |   \|  | |  |__|  |  Nick Hartjes
# |    `  | |   __   |  https://nickhartjes.nl
# |  |\   | |  |  |  |  https://github.com/nickhartjes/
# |__| \__| |__|  |__| 
#    

if [[ -d "$HOME/.dotfiles" ]]
then
    echo "Pulling the latest files."
    cd ~/.dotfiles
    git pull --recurse-submodules
else
    echo "Cloning .dotfiles in ~/.dotfiles folder"
    git clone --recurse-submodules git@github.com:nickhartjes/dotfiles.git ~/.dotfiles
fi
