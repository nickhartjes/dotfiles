rsync -a --delete  $HOME/.dotfiles/.config/awesome  $HOME/.config
rsync -a --delete  $HOME/.dotfiles/.config/.oh-my-zsh  $HOME/.config
rsync -a --delete  $HOME/.dotfiles/.config/alacritty  $HOME/.config

sh ~/.config/install/awesome-personal/install.sh