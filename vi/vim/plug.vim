call plug#begin('~/.vim/plugged')
"COMMON (new version two plug#begin don't seem to work anymore)
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
 Plug 'mhinz/vim-signify'                                   " GIT show line modified
 Plug 'luochen1990/rainbow'                                 " Rainbow
 Plug 'christoomey/vim-tmux-navigator'                      " Vim/Tmux seamlessly

"VIM
 Plug 'vim-airline/vim-airline'                             " Good airline
 Plug 'vim-airline/vim-airline-themes'                      " Theme for airline
 Plug 'sheerun/vim-polyglot'                                " A collection of language packs for Vim.
 Plug 'psliwka/vim-smoothie'                                " Scrolling more smooth
 Plug 'junegunn/goyo.vim'                                   " ZEN mode
 Plug 'ludovicchabant/vim-gutentags'                        " Automate the creation and updating of tags in the background
 Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
 Plug 'junegunn/fzf.vim'

 Plug 'ryanoasis/vim-devicons'                              " Set of icons
"THEME
 Plug 'morhetz/gruvbox'                                     " Theme vim
 Plug 'joshdick/onedark.vim'                                " Theme vim
 Plug 'arcticicestudio/nord-vim'                            " Theme vim
 Plug 'cocopon/iceberg.vim'                                 " Theme vim
 call plug#end()
