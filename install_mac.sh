# Oh my zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
brew install neovim
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

brew install fzf bat ripgrep
brew install --HEAD universal-ctags/universal-ctags/universal-ctags


#Add font in iterm2->preference->profile->text
brew tap homebrew/cask-fonts
brew cask install font-hack-nerd-font

mkdir -p ~/.config/nvim
touch ~/.vimrc
touch .config/nvim/init.vim
echo 'source ~/config/Vim/my_configs.vim' >>  ~/.vimrc
echo 'source ~/.vimrc' >>  .config/nvim/init.vim
