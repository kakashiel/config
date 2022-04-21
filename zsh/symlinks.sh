###############
# Symlink
###############

mkdir -p ~/.config/nvim
#NVCHAD
ln -sf $MYCONF/vi/nvim/* ~/.config/nvim/

#LUNARVIM
ln -sf $MYCONF/vi/lvim/* ~/.config/lvim/


ln -f $MYCONF/vi/vim/init.vim ~/.vimrc 
ln -f $MYCONF/vi/jetbrain/ideavimrc ~/.ideavimrc 
ln -f $MYCONF/zsh/p10k.zsh ~/.p10k.zsh
