#! /bin/bash
sudo apt update

sudo apt -y install zsh
chsh -s $(which zsh)
#vim
sudo apt -y install vim
sudo apt -y install neovim
sudo apt -y install tmux
sudo apt -y install python3-pip
sudo apt -y install curl
sudo apt -y install npm
sudo apt -y install nodejs

# Install z
PATH_PROFILE=/usr/local/etc/profile.d
sudo mkdir -p $PATH_PROFILE
wget https://raw.githubusercontent.com/rupa/z/master/z.sh -O $PATH_PROFILE/z.sh
# Add to .bashrc
echo . $PATH_PROFILE/z.sh >> ~/.zshrc

#Remap caplock to ctrl
setxkbmap -layout us -option ctrl:nocaps
