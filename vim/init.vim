source $MYCONF/vim/config/settings.vim
 " Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
      \ if line("'\"") > 0 && line("'\"") <= line("$") |
      \   exe "normal! g`\"" |
      \ endif

augroup myvimrc " auto source
     au!
     au BufWritePost *.lua,*.vim,.vimrc,_vimrc,vimrc,.gvimrc,_gvimrc,gvimrc so $MYVIMRC | if has('gui_running') | so $MYGVIMRC | endif
 augroup END
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""PLUGIN
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if empty(glob('~/.vim/autoload/plug.vim'))  "Install Plug if not present
 silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
   \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
 autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
 Plug 'mhinz/vim-startify'                                   " Vim start dashboard
 Plug 'liuchengxu/vim-which-key'                             " Shortcut manager
 Plug 'https://github.com/tpope/vim-surround.git'            " Shortcut surroung
 Plug 'https://github.com/tpope/vim-commentary.git'          " intellij: Shortcut commentary
 Plug 'vim-scripts/argtextobj.vim'                           " intellij: Text-object like motion for arguments
 Plug 'machakann/vim-highlightedyank'                        " intellij: Make the yanked region apparent!
 Plug 'justinmk/vim-sneak'                                   " s<char><char>
 Plug 'easymotion/vim-easymotion'                            " Easy motion plug
 Plug 'airblade/vim-rooter'                                  " Set vim to root directory
 Plug 'hrsh7th/vim-vsnip'                                   " Vim snippets
 Plug 'hrsh7th/vim-vsnip-integ'
 Plug '907th/vim-auto-save'                                  " Autosave
 Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }     " Project manager
 Plug 'kyazdani42/nvim-tree.lua'                             " Project manager
 Plug 'romgrk/barbar.nvim'                                   " Tab like any IDE
 " Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
 " Plug 'junegunn/fzf.vim'
 Plug 'nvim-lua/popup.nvim'                                 " Telescope
 Plug 'nvim-lua/plenary.nvim'                               " Telescope
 Plug 'nvim-telescope/telescope.nvim'                       " Telescope
 Plug 'tpope/vim-fugitive'                                  " GIT
 Plug 'tpope/vim-rhubarb'                                   " GIT with more command
 Plug 'junegunn/gv.vim'                                     " GIT browse commit
 Plug 'mhinz/vim-signify'                                   " GIT show line modified
 Plug 'tpope/vim-dadbod'                                    " DB interface
 Plug 'kristijanhusak/vim-dadbod-ui'                        " DB client UI
 Plug 'psliwka/vim-smoothie'                                " Scrolling more smooth
 Plug 'junegunn/goyo.vim'                                   " ZEN mode
 Plug 'vim-airline/vim-airline'                             " Good airline
 Plug 'vim-airline/vim-airline-themes'                      " Theme for airline
 " Plug 'neoclide/coc.nvim', {'branch': 'release'}            " Completion COC
 Plug 'neovim/nvim-lspconfig'                               " LSP
 Plug 'hrsh7th/nvim-compe'                                  " Completion
 Plug 'glepnir/lspsaga.nvim'                                " Popup action
 " Plug 'dense-analysis/ale'                                  " syntax checking and semantic errors
 Plug 'sheerun/vim-polyglot'                                " A collection of language packs for Vim.
 " Plug 'ryanoasis/vim-devicons'                              " Set of icons
 Plug 'kyazdani42/nvim-web-devicons'                        " Set of icons with lua
 " Plug 'ludovicchabant/vim-gutentags'                        " Automate the creation and updating of tags in the background
 Plug 'voldikss/vim-floaterm'                               " Allow float windows
 Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} " Better syntax
 Plug 'luochen1990/rainbow'                                 " Rainbow
 Plug 'christoomey/vim-tmux-navigator'                      " Vim/Tmux seamlessly
 Plug 'morhetz/gruvbox'                                     " Theme vim
 Plug 'joshdick/onedark.vim'                                " Theme vim
 Plug 'arcticicestudio/nord-vim'
 Plug 'mhartington/oceanic-next'                           " Theme vim with treesitter
call plug#end()

source $MYCONF/vim/plugins/airline.vim
" source $MYCONF/vim/themes/gruvbox.vim
" source $MYCONF/vim/themes/onedark.vim
" source $MYCONF/vim/themes/nord.vim
source $MYCONF/vim/themes/oceanic-next.vim


 source $MYCONF/vim/plugins/sneak.vim
 source $MYCONF/vim/plugins/signify.vim
 source $MYCONF/vim/plugins/rainbow.vim
 source $MYCONF/vim/plugins/argtextobj.vim
 source $MYCONF/vim/plugins/startify.vim
 source $MYCONF/vim/plugins/vim-rooter.vim
 source $MYCONF/vim/plugins/barbar.vim
 luafile $MYCONF/vim/lua/treesitter.lua
 source $MYCONF/vim/plugins/auto-save.vim
 source $MYCONF/vim/plugins/dadbod.vim
" source $MYCONF/vim/plugins/ale.vim
 " source $MYCONF/vim/plugins/coc.vim
 source $MYCONF/vim/plugins/lsp-config.vim
 luafile $MYCONF/vim/lua/compe.lua
 luafile $MYCONF/vim/lua/lspaga.lua
 source $MYCONF/vim/plugins/fzf.vim
 source $MYCONF/vim/plugins/devicons.vim
 source $MYCONF/vim/plugins/gutentags.vim
 source $MYCONF/vim/plugins/floaterm.vim
 source $MYCONF/vim/plugins/vim-tmux-navigator.vim

 source $MYCONF/vim/mapping/mapping.vim
 source $MYCONF/vim/plugins/which-key.vim

 luafile $MYCONF/vim/lua/lsp.lua
