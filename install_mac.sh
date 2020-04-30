#Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

brew cask install \
    firefox \
    google-chrome \
    tunnelblick \
    virtualbox \
    docker \
    iterm2 \
    visual-studio-code \
    intellij-idea \
    steam \
    spotify \
    slack \
    whatsapp \
    zoomus \
    miro-formerly-realtimeboard \


brew install \
    node \
    npm \
    vim \
    oath-toolkit \
    fzf \
    bat \
    ripgrep 

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

#Add coc setting config
cp  ~/perso/config/vim/coc-settings.json $HOME/.vim/

touch ~/.vimrc
echo 'source ~/perso/config/vim/my_configs.vim' >>  ~/.vimrc

vim -E -s -u ~/.vimrc -u ~/perso/config/vim/my_configs.vim +PlugInstall +qall

#======================================
#INTELLIJ
#======================================
touch .ideavimrc
echo 'source ~/perso/config/ideavimrc' >>  ~/.ideavimrc

cp ~/perso/config/vscode/settings.json ~/Library/Application\ Support/Code/User
#======================================
# Oh my zsh
#======================================
echo 'LAST STEP MANUAL'
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
#FIXME: /!\MANUAL STEP
echo 'source ~/perso/config/main.zshrc' >> ~/.zshrc
source ~/.zshrc