rsync -a --delete  $HOME/.dotfiles/.config/awesome                      $HOME/.config
rsync -a --delete  $HOME/.dotfiles/.config/awesome-personal             $HOME/.config
rsync -a --delete  $HOME/.dotfiles/.config/.oh-my-zsh                   $HOME/.config
rsync -a --delete  $HOME/.dotfiles/.config/alacritty                    $HOME/.config

# Copy awesome settings 
cp -r $HOME/.config/awesome-personal/rc.lua                             $HOME/.config/awesome/rc.lua
cp -r $HOME/.config/awesome-personal/picom.conf                         $HOME/.config/awesome/picom.conf
cp -r $HOME/.config/awesome-personal/autostart.sh                       $HOME/.config/awesome/autostart.sh
cp -r $HOME/.config/awesome-personal/themes/dremora/theme-personal.lua  $HOME/.config/awesome/themes/dremora/theme-personal.lua

# Copy wallpapers
rsync -a --delete  $HOME/.dotfiles/.wallpapers                          $HOME/


# Copy .zshrc config
cp -r $HOME/.dotfiles/.zshrc-personal                                   $HOME/.zshrc-personal
cp -r $HOME/.dotfiles/.p10k.zsh                                         $HOME/.p10k.zsh