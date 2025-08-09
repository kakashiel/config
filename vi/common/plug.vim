"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""PLUGIN
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" For neovim ~/.local/share/nvim/plugged
" For vim  ~/.vim/plugged

call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')
"COMMON
 Plug 'https://github.com/tpope/vim-surround.git'           " Shortcut surroung
 Plug 'https://github.com/tpope/vim-commentary.git'         " intellij: comment gc & gcc
 Plug 'vim-scripts/argtextobj.vim'                          " intellij: Text-object like motion for arguments
 Plug 'machakann/vim-highlightedyank'                       " intellij: Make the yanked region apparent!
 Plug 'justinmk/vim-sneak'                                  " intellij: s<char><char>
 Plug 'easymotion/vim-easymotion'                           " intellij: Easy motion plug
 Plug 'preservim/nerdtree'                                  " intellij: Project manager
 Plug 'vim-scripts/ReplaceWithRegister'                     " intellij: repace: gr & grr
 Plug 'tommcdo/vim-exchange'                                " intellij: exchange: gc & gcc
 Plug 'tpope/vim-repeat'                                    " Repeat also pluging
 Plug 'tpope/vim-speeddating'                               " Incremente date & time
 Plug 'tpope/vim-rsi'                                       " Readling shortcut for insert & command line
 Plug 'tpope/vim-fugitive'                                  " GIT
 Plug 'tpope/vim-rhubarb'                                   " GIT with more command
 Plug 'junegunn/gv.vim'                                     " GIT browse commit
 " Plug 'mhinz/vim-signify'                                   " GIT show line modified
 Plug 'luochen1990/rainbow'                                 " Rainbow
 Plug 'christoomey/vim-tmux-navigator'                      " Vim/Tmux seamlessly
 " Plug 'preservim/vimux'                                     " run VimuxRunCommand

call plug#end()


