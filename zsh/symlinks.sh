###############
# Symlink
###############

mkdir -p ~/.config/nvim
#NVIM
ln -sf $MYCONF/vi/nvim/* ~/.config/nvim/

#LUNARVIM
ln -sf $MYCONF/vi/lvim/* ~/.config/lvim/


ln -f $MYCONF/vi/vim/init.vim ~/.vimrc 
ln -f $MYCONF/vi/jetbrain/ideavimrc ~/.ideavimrc 

ln -f $MYCONF/zsh/starship.toml ~/.config/starship.toml

mkdir -p ~/.config/gh
ln -f $MYCONF/gh/config.yml ~/.config/gh/config.yml

#VSCODE
# ln -f $MYCONF/vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json
