###############
# Symlink
###############

mkdir -p ~/.config/nvim
#NVCHAD
mkdir -p ~/.config/nvim/lua
mkdir -p ~/.config/nvim/lua/custom
ln -sf $MYCONF/vi/nvchad/* ~/.config/nvim/lua/custom

#LUNARVIM
ln -sf $MYCONF/vi/lvim/* ~/.config/lvim/


ln -f $MYCONF/vi/vim/init.vim ~/.vimrc 
ln -f $MYCONF/vi/jetbrain/ideavimrc ~/.ideavimrc 
ln -f $MYCONF/zsh/p10k.zsh ~/.p10k.zsh
