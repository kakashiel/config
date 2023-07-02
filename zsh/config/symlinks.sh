###############
# Symlink
###############

#Vim
ln -f $MYCONF/vi/vim/init.vim ~/.vim/vimrc
mkdir -p ~/.config/ideavim
ln -f $MYCONF/vi/jetbrain/ideavimrc $XDG_CONFIG_HOME/ideavim/ideavimrc

#GITHUB
mkdir -p ~/.config/gh
ln -f $MYCONF/github/config.yml $XDG_CONFIG_HOME/gh/config.yml

#VSCODE
# ln -f $MYCONF/vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json

#GPT
mkdir -p ~/.config/gpt-cli
ln -f $MYCONF/gpt/gpt.yml ~/.config/gpt-cli/gpt.yml

#Kitty
mkdir -p ~/.config/kitty/themes
ln -f $MYCONF/kitty/kitty.conf ~/.config/kitty/kitty.conf
ln -f $MYCONF/kitty/nord.conf ~/.config/kitty/themes/nord.conf

#Hammerspoon
mkdir -p ~/.hammerspoon
ln -sf $MYCONF/hammerspoon/* ~/.hammerspoon
