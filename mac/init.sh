#!/bin/bash

echo "source ~/Documents/perso/config/zsh/init.zshrc" >> ~/.zshrc
sudo chown -R $(whoami) /usr/local/var/homebrew


#Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

source ./install_app.sh
source ./install.sh
source ./app/zsh.sh
source ./app/tmux.sh

# To install useful key bindings and fuzzy completion:
$(brew --prefix)/opt/fzf/install

