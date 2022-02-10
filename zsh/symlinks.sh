###############
# Symlink
###############
mkdir -p ~/.config/nvim
mkdir -p ~/.config/nvim/lua/custom
# ln -f $MYCONF/vi/nvim/init.vim ~/.config/nvim/init.vim
#ln -f $MYCONF/vi/nvim/init.lua ~/.config/nvim/init.lua
#ln -sf $MYCONF/vi/nvim/* ~/.config/nvim/
ln -sf $MYCONF/vi/nvchad/* ~/.config/nvim/lua/custom
ln -f $MYCONF/vi/vim/init.vim ~/.vimrc 
ln -f $MYCONF/vi/jetbrain/ideavimrc ~/.ideavimrc 
ln -f $MYCONF/zsh/p10k.zsh ~/.p10k.zsh
