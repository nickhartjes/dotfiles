#!/bin/bash

source ./functions.sh

echo "################################################################"
echo "################### installing cli software"
echo "################################################################"

aurinstall aws-cli-v2-bin
aurinstall bitwarden-cli
aurinstall kubectl-bin

aurinstall zsh-theme-powerlevel10k-git
aurinstall ttf-meslo-nerd-font-powerlevel10k

echo "################################################################"
echo "################### cli software installed"
echo "################################################################"
echo ""