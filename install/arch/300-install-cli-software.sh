#!/bin/bash

source ~/.dotfiles/install/arch/functions.sh

echo "################################################################"
echo "################### installing cli software"
echo "################################################################"

aurinstall aws-cli-v2-bin
aurinstall bitwarden-cli
aurinstall kubectl-bin
aurinstall k9s
aurinstall hwinfo
aurinstall expac

aurinstall neovim


# https://popeyecli.io/
aurinstall popeye


aurinstall zsh-theme-powerlevel10k-git
aurinstall ttf-meslo-nerd-font-powerlevel10k

aurinstall go-yq
aurinstall jq


echo "################################################################"
echo "################### cli software installed"
echo "################################################################"
echo ""
