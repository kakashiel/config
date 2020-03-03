# Oh my zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

brew install fzf bat ripgrep
brew install --HEAD universal-ctags/universal-ctags/universal-ctags

#Install a complete vim with all features (need conceal)
brew install vim

#Add font in iterm2->preference->profile->text
brew tap homebrew/cask-fonts
brew cask install font-hack-nerd-font

mkdir -p ~/.config/nvim
touch ~/.vimrc
touch .config/nvim/init.vim
echo 'source ~/config/Vim/my_configs.vim' >>  ~/.vimrc
echo 'source ~/.vimrc' >>  .config/nvim/init.vim

#INTELLIJ VIMRC
touch .ideavimrc
echo 'source ~/config/Vim/ideavimrc' >>  ~/.ideavimrc

