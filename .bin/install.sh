git clone --recurse-submodules git@github.com:nickhartjes/dotfiles.git $HOME/.dotfiles

rsync -a --delete  $HOME/.dotfiles/.config/awesome  $HOME/.config/awesome
rsync -a --delete  $HOME/.dotfiles/.config/.oh-my-zsh  $HOME/.config/.oh-my-zsh
rsync -a --delete  $HOME/.dotfiles/.config/alacritty  $HOME/.config/alacritty
rsync -a --delete  $HOME/.dotfiles/.wallpapers  $HOME/.wallpapers