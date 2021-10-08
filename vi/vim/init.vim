source $MYCONF/vi/common/config/settings.vim
source $MYCONF/vi/common/mapping/mapping.vim
source $MYCONF/vi/common/load_plug.vim

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""PLUGIN
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

call plug#begin('~/.vim/plugged')
"COMMON
 Plug 'https://github.com/tpope/vim-surround.git'            " Shortcut surroung
 Plug 'https://github.com/tpope/vim-commentary.git'          " intellij: Shortcut commentary
 Plug 'vim-scripts/argtextobj.vim'                           " intellij: Text-object like motion for arguments
 Plug 'machakann/vim-highlightedyank'                        " intellij: Make the yanked region apparent!
 Plug 'justinmk/vim-sneak'                                   " s<char><char>
 Plug 'easymotion/vim-easymotion'                            " Easy motion plug
 Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }     " Project manager
 Plug 'tpope/vim-fugitive'                                  " GIT
 Plug 'tpope/vim-rhubarb'                                   " GIT with more command
 Plug 'junegunn/gv.vim'                                     " GIT browse commit
 Plug 'mhinz/vim-signify'                                   " GIT show line modified
 Plug 'psliwka/vim-smoothie'                                " Scrolling more smooth
 Plug 'junegunn/goyo.vim'                                   " ZEN mode
 Plug 'ludovicchabant/vim-gutentags'                        " Automate the creation and updating of tags in the background
 Plug 'luochen1990/rainbow'                                 " Rainbow
 Plug 'christoomey/vim-tmux-navigator'                      " Vim/Tmux seamlessly
 " Plug 'preservim/vimux'                                     " run VimuxRunCommand

"VIM
 Plug 'vim-airline/vim-airline'                             " Good airline
 Plug 'vim-airline/vim-airline-themes'                      " Theme for airline
 Plug 'sheerun/vim-polyglot'                                " A collection of language packs for Vim.

 Plug 'ryanoasis/vim-devicons'                              " Set of icons

"THEME
 Plug 'morhetz/gruvbox'                                     " Theme vim
 Plug 'joshdick/onedark.vim'                                " Theme vim
 Plug 'arcticicestudio/nord-vim'                            " Theme vim

call plug#end()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""PLUGIN CONFIG
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
source $MYCONF/vi/vim/plugins/airline.vim

"source $MYCONF/vi/vim/themes/gruvbox.vim
"source $MYCONF/vi/vim/themes/onedark.vim
source $MYCONF/vi/vim/themes/nord.vim
source $MYCONF/vi/vim/plugins/devicons.vim


source $MYCONF/vi/common/plugins/sneak.vim
source $MYCONF/vi/common/plugins/signify.vim
source $MYCONF/vi/common/plugins/rainbow.vim
source $MYCONF/vi/common/plugins/argtextobj.vim
source $MYCONF/vi/common/plugins/gutentags.vim
source $MYCONF/vi/common/plugins/vim-tmux-navigator.vim


