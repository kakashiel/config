#!/bin/bash

echo "source ~/Documents/perso/config/zsh/init.zshrc" >> ~/.zshrc


#Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

source ./install.sh

#======================================
# Oh my zsh
#======================================
# cd ~ && git clone https://github.com/zsh-users/antigen.git .antigen && cd -

