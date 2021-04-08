#!/bin/bash

#Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

source ./install.sh

#======================================
#Vim
#======================================
#Install other dependencies
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
brew install --HEAD universal-ctags/universal-ctags/universal-ctags

#Add font in iterm2->preference->profile->text
#Change iterm2->preference->profile->working directory
#Change iterm2->preference->profile->key->preset->working directory
brew tap homebrew/cask-fonts
brew cask install font-hack-nerd-font

touch ~/.vimrc
echo 'source $MYCONF/vim/init.vim' >>  ~/.vimrc

vim -E -s -u ~/.vimrc -u ~/perso/config/vim/my_configs.vim +PlugInstall +qall

#======================================
#INTELLIJ
#======================================
touch .ideavimrc
echo 'source $MYCONF/vim/ideavimrc' >>  ~/.ideavimrc

cp ~/perso/config/vscode/settings.json ~/Library/Application\ Support/Code/User
#======================================
# Oh my zsh
#======================================
cd ~ && git clone https://github.com/zsh-users/antigen.git .antigen && cd -

echo 'LAST STEP MANUAL'
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
#FIXME: /!\MANUAL STEP
echo 'source ~/perso/config/zsh/init.zshrc' >> ~/.zshrc
source ~/.zshrc
