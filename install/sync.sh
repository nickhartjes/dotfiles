#!/bin/bash
#  __   __   __    __  
# |  \ |  | |  |  |  | 
# |   \|  | |  |__|  |  Nick Hartjes
# |    `  | |   __   |  https://nickhartjes.nl
# |  |\   | |  |  |  |  https://github.com/nickhartjes/
# |__| \__| |__|  |__| 
#    

rsync -a --delete  $HOME/.dotfiles/.config/awesome                      $HOME/.config
rsync -a --delete  $HOME/.dotfiles/.config/awesome-personal             $HOME/.config
rsync -a --delete  $HOME/.dotfiles/.config/.oh-my-zsh                   $HOME/.config
rsync -a --delete  $HOME/.dotfiles/.config/alacritty                    $HOME/.config
rsync -a --delete  $HOME/.dotfiles/.config/nvim                    		$HOME/.config

# Copy awesome settings 
cp -r $HOME/.config/awesome-personal/rc.lua                             $HOME/.config/awesome/rc.lua
cp -r $HOME/.config/awesome-personal/picom.conf                         $HOME/.config/awesome/picom.conf
cp -r $HOME/.config/awesome-personal/autostart.sh                       $HOME/.config/awesome/autostart.sh

# Copy wallpapers
rsync -a --delete  $HOME/.dotfiles/.wallpapers                          $HOME/

# Copy .zshrc config
cp -r $HOME/.dotfiles/.zshrc-personal                                   $HOME/.zshrc-personal
cp -r $HOME/.dotfiles/.p10k.zsh                                         $HOME/.p10k.zsh
cp -r $HOME/.dotfiles/.gitconfig $HOME/.gitconfig

# Install NVIM plugins
nvim +'PlugInstall --sync' +qa

# Add zshrc-personal to zshrc
grep -qxF '[[ -f ~/.zshrc-personal ]] && . ~/.zshrc-personal' ~/.zshrc || echo '[[ -f ~/.zshrc-personal ]] && . ~/.zshrc-personal' >> ~/.zshrc
