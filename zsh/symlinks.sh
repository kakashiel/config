###############
# Symlink
###############

#Vim
ln -f $MYCONF/vi/vim/init.vim ~/.vimrc
ln -f $MYCONF/vi/jetbrain/ideavimrc ~/.ideavimrc

#GITHUB
mkdir -p ~/.config/gh
ln -f $MYCONF/gh/config.yml ~/.config/gh/config.yml

#VSCODE
# ln -f $MYCONF/vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json

#GPT
mkdir -p ~/.config/gpt-cli
ln -f $MYCONF/gpt/gpt.yml ~/.config/gpt-cli/gpt.yml

#typos
ln -f $MYCONF/typos/typos.toml ~/.typos.toml

#Kitty
ln -f $MYCONF/kitty/kitty.conf ~/.config/kitty/kitty.conf

#Hammerspoon
ln -sf $MYCONF/hammerspoon/* ~/.hammerspoon
