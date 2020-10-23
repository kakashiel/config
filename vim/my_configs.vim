"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Maintainer:
"   Adrien loustaunau
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader = " "
let maplocalleader = ","

set autoread " Set to auto read when a file is changed from the outside
set magic " For regular expressions turn magic on

syntax enable                           " Enables syntax highlighing
set colorcolumn=80                      " Linebreak
set hidden                              " Required to keep multiple buffers open multiple buffers
set wrap                                " Cut long lines as just one line
set tw=500                              " Linebreak on 500 characters
set lbr                                 " When wrap doesnt cut word
set whichwrap+=<,>,h,l,[,]              " Will move to the previous/next line after reaching first/last character in the line.
set encoding=utf-8                      " The encoding displayed
set pumheight=10                        " Makes popup menu smaller
set fileencoding=utf-8                  " The encoding written to file
set spell spelllang=en_us               " English language state
set lazyredraw                          " Don't redraw while executing macros (good performance config)
set ruler                               " Show the cursor position all the time
set cmdheight=2                         " More space for displaying messages
set iskeyword+=-                        " treat dash separated words as a word text object"
set mouse=a                             " Enable your mouse
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set t_Co=256                            " Support 256 colors
silent! set termguicolors               " More colors
set showmatch                           " Show matching brackets when text indicator is over them
set mat=1                               " How many tenths of a second to blink when matching brackets
set foldcolumn=1                        " Add a bit extra margin to the left
set conceallevel=0                      " So that I can see `` in markdown files
set tabstop=2                           " Insert 2 spaces for a tab
set shiftwidth=2                        " Change the number of space characters inserted for indentation
set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
set expandtab                           " Converts tabs to spaces
set smartindent                         " Makes indenting smart
set autoindent                          " Good auto indent
set laststatus=2                        " Always display the status line
set number relativenumber               " Set number line 
set cursorline                          " Enable highlighting of the current line
set background=dark                     " tell vim what the background color looks like
set showtabline=2                       " Always show tabs
set noshowmode                          " We don't need to see things like -- INSERT -- anymore
set nobackup                            " This is recommended by coc
set nowritebackup                       " This is recommended by coc
set updatetime=300                      " Faster completion
set timeoutlen=500                      " By default timeoutlen is 1000 ms
set history=500                         " Sets how many lines of history
set noerrorbells                        " No annoying sound on errors
set novisualbell                        " No annoying sound on errors
set backspace=eol,start,indent          " backspace so it acts as it should act
set formatoptions-=cro                  " Stop newline continution of comments
set ignorecase                          " Ignore case when searching
set smartcase                           " When searching try to be smart about cases 
set hlsearch                            " Highlight search results
set incsearch                           " Makes search act like search in modern browsers
set clipboard=unnamedplus               " Copy paste between vim and everything else
"set autochdir                          " Your working directory will always be the same as your working directory
set ffs=unix,dos,mac                    " Use Unix as the standard file type
" set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣
" set list                                " Set no print character
set wildmenu                            " Turn on the Wild menu
set wildmode=longest:full,full
set wildignore=*.o,*~,*.pyc             " Ignore compiled files
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.idea/*,*/.DS_Store,*/node_modules/*

imap jj <Esc>
" Remap VIM 0 to first non-blank character
map 0 ^ 
nmap <leader>w :wq!<cr>
" New line with enter
map <CR> o<Esc>
" :W sudo saves the file 
command W w !sudo tee % > /dev/null
noremap == <esc>gg=G''<CR>
"Vim terminal mode
tnoremap <Esc> <C-\><C-n> 
tnoremap jj <C-\><C-n>
" Disable highlight when <leader><cr> is pressed
map <silent> <leader><cr> :noh<cr>
" Smart way to move between windows
" map <C-j> <C-W>j
" map <C-k> <C-W>k
" map <C-h> <C-W>h
" map <C-l> <C-W>l
" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
      \ if line("'\"") > 0 && line("'\"") <= line("$") |
      \   exe "normal! g`\"" |
      \ endif
au! BufWritePost $MYVIMRC source %      " auto source when writing to init.vm alternatively you can run :source $MYVIMRC

call plug#begin('~/.vim/plugged')

Plug 'mhinz/vim-startify'                                   " Vim start dashboard
Plug 'jiangmiao/auto-pairs'                                 " Auto pairs for '(' '[' '{'
Plug 'https://github.com/tpope/vim-surround.git'            " Shortcut surroung
Plug 'https://github.com/tpope/vim-commentary.git'          " Shortcut commentary
" Plug 'easymotion/vim-easymotion'                          " Easy motion plug
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }     " Project manager
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'                                  "GIT
Plug 'airblade/vim-gitgutter'                              "GIT
Plug 'junegunn/goyo.vim'                                   "ZEN mode
Plug 'https://github.com/vim-airline/vim-airline.git'      " Good airline
Plug 'neoclide/coc.nvim', {'branch': 'release'}            " Completion COC
Plug 'liuchengxu/vim-which-key'                            " Shortcut manager
Plug 'dense-analysis/ale'                                  " syntax checking and semantic errors
Plug 'sheerun/vim-polyglot'                                " A collection of language packs for Vim.
Plug 'ryanoasis/vim-devicons'                              " Set of icons
Plug 'ludovicchabant/vim-gutentags'                        " Automate the creation and updating of tags in the background
Plug 'voldikss/vim-floaterm'                               " Allow float windows

Plug 'morhetz/gruvbox' " Theme vim
Plug 'joshdick/onedark.vim' " Theme vim
call plug#end()

" source $MYCONF/vim/themes/gruvbox.vim
source $MYCONF/vim/themes/onedark.vim

source $MYCONF/vim/plugins/which-key.vim
source $MYCONF/vim/plugins/startify.vim
source $MYCONF/vim/plugins/nerdtree.vim
source $MYCONF/vim/plugins/ale.vim
source $MYCONF/vim/plugins/coc.vim
source $MYCONF/vim/plugins/fzf.vim
source $MYCONF/vim/plugins/devicons.vim
source $MYCONF/vim/plugins/gutentags.vim
source $MYCONF/vim/plugins/floaterm.vim

nnoremap <space>/ :Commentary<CR>
vnoremap <space>/ :Commentary<CR>
