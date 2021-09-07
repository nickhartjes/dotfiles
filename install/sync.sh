rsync -a --delete  $HOME/.dotfiles/.config/awesome  $HOME/.config
rsync -a --delete  $HOME/.dotfiles/.config/awesome-personal  $HOME/.config
rsync -a --delete  $HOME/.dotfiles/.config/.oh-my-zsh  $HOME/.config
rsync -a --delete  $HOME/.dotfiles/.config/alacritty  $HOME/.config

# Copy awesome settings
cp -r ~/.config/awesome-personal/rc.lua ~/.config/awesome/rc.lua
cp -r ~/.config/awesome-personal/picom.conf ~/.config/awesome/picom.conf
cp -r ~/.config/awesome-personal/autostart.sh ~/.config/awesome/autostart.sh
cp -r ~/.config/awesome-personal/themes/dremora/theme-personal.lua ~/.config/awesome/themes/dremora/theme-personal.lua

# Copy wallpapers
rsync -a --delete  $HOME/.dotfiles/.wallpapers  $HOME/