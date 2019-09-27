#!/bin/bash

echo "source ~/.vim/kevin.vimrc" > ~/.vimrc
rm -rf bundle/
git config --global color.ui auto

git clone git://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree
git clone git://github.com/Rip-Rip/clang_complete.git ~/.vim/bundle/clang_complete
git clone git://github.com/ervandew/supertab.git ~/.vim/bundle/supertab
git clone git://github.com/majutsushi/tagbar ~/.vim/bundle/tagbar
git clone https://github.com/scrooloose/syntastic.git ~/.vim/bundle/syntastic
#git clone git://github.com/msanders/snipmate.vim.git ~/.vim/bundle/snipmate
#git clone git://github.com/vim-scripts/taglist.vim.git ~/.vim/bundle/taglist
#git clone git://github.com/vim-ruby/vim-ruby.git ~/.vim/bundle/vim-ruby
#git clone git://github.com/tpope/vim-rails.git ~/.vim/bundle/vim-rails
#git clone git://github.com/vim-scripts/javacomplete.git ~/.vim/bundle/javacomplete

#END

