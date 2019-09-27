brew install neovim
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

brew install fzf bat ripgrep
brew install --HEAD universal-ctags/universal-ctags/universal-ctags

brew tap homebrew/cask-fonts
brew cask install font-hack-nerd-font

#mkdir .config/nvim
#echo 'source ~/.vimrc' >> touch .config/nvim/init.vim
#echo 'source ~/config/Vim/my_configs.vim' >> touch ~/.vimrc
