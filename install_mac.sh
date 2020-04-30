#Tools
brew cask install firefox
brew cask install google-chrome
brew cask install tunnelblick
#Tools code
brew cask install virtualbox
brew cask install docker
brew cask install iterm2
brew cask install visual-studio-code
brew cask install intellij-idea
#Fun
brew cask install steam
brew cask install spotify
#Social
brew cask install slack
brew cask install whatsapp
brew cask install zoomus
brew cask install all-in-one-messenger

#======================================
# Oh my zsh
#======================================
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

#======================================
#Vim
#======================================

#Install a complete vim with all features (need conceal)
brew install vim
#Install other dependencies
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
brew install fzf bat ripgrep
brew install --HEAD universal-ctags/universal-ctags/universal-ctags

#Add font in iterm2->preference->profile->text
brew tap homebrew/cask-fonts
brew cask install font-hack-nerd-font

#Add coc setting config
cp  $MYCONF/Vim/coc-settings.json $HOME/.vim/

touch ~/.vimrc
echo 'source $MYCONF/vim/my_configs.vim' >>  ~/.vimrc

#======================================
#INTELLIJ
#======================================
touch .ideavimrc
echo 'source $MYCONF/ideavimrc' >>  ~/.ideavimrc
