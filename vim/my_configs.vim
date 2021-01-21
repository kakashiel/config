
set autoread " Set to auto read when a file is changed from the outside
set magic " For regular expressions turn magic on

syntax enable                           " Enables syntax highlighing
set colorcolumn=80                      " Linebreak
set hidden                              " Required to keep multiple buffers open multiple buffers
set nowrap                                " WRAP Cut long lines as just one line
" set tw=500                              " Wrap Linebreak on 500 characters
" set lbr                                 " Wrap When wrap doesnt cut word
" set whichwrap+=<,>,h,l,[,]              " Wrap Will move to the previous/next line after reaching first/last character in the line.
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
" set clipboard=unnamedplus               " Copy paste between vim and everything else
set scrolloff=8                         "Start scrolling when we're 8 lines away from margins
set sidescrolloff=15
" set autochdir                          " Your working directory will always be the same as your working directory
set ffs=unix,dos,mac                    " Use Unix as the standard file type
"set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣
"set list                                " Set no print character
set  wildmenu                           " Turn on the Wild menu
set wildmode=longest:full,full
set wildignore=*.o,*~,*.pyc             " Ignore compiled files
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.idea/*,*/.DS_Store,*/node_modules/*
set undofile                            " Maintain undo history between sessions
set undodir=~/.vim/undodir              "Dir where undo are save
set undolevels=1000                     " How many undos
set undoreload=10000                    " number of lines to save for undo

 " This two line remove netrw from the buffer
let g:netrw_fastbrowse = 0
autocmd FileType netrw setl bufhidden=wipe

 " Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
      \ if line("'\"") > 0 && line("'\"") <= line("$") |
      \   exe "normal! g`\"" |
      \ endif

augroup myvimrc " auto source
     au!
     au BufWritePost *.vim,.vimrc,_vimrc,vimrc,.gvimrc,_gvimrc,gvimrc so $MYVIMRC | if has('gui_running') | so $MYGVIMRC | endif
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
 Plug 'honza/vim-snippets'                                   " Vim snippets
 Plug '907th/vim-auto-save'                                  " Autosave
 Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }     " Project manager
 Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
 Plug 'junegunn/fzf.vim'
 Plug 'tpope/vim-fugitive'                                  " GIT
 Plug 'tpope/vim-rhubarb'                                   " GIT with more command
 Plug 'junegunn/gv.vim'                                     " GIT browse commit
 Plug 'mhinz/vim-signify'                                   " GIT show line modified
 Plug 'junegunn/goyo.vim'                                   " ZEN mode
 Plug 'vim-airline/vim-airline'                             " Good airline
 Plug 'vim-airline/vim-airline-themes'                      " Theme for airline
 Plug 'neoclide/coc.nvim', {'branch': 'release'}            " Completion COC
 " Plug 'dense-analysis/ale'                                  " syntax checking and semantic errors
 Plug 'sheerun/vim-polyglot'                                " A collection of language packs for Vim.
 Plug 'ryanoasis/vim-devicons'                              " Set of icons
 Plug 'ludovicchabant/vim-gutentags'                        " Automate the creation and updating of tags in the background
 Plug 'voldikss/vim-floaterm'                               " Allow float windows
" " Plug 'nvim-treesitter/nvim-treesitter'                     " Better syntax
 Plug 'luochen1990/rainbow'                                 " Rainbow
 Plug 'christoomey/vim-tmux-navigator'                      " Vim/Tmux seamlessly
 Plug 'morhetz/gruvbox'                                     " Theme vim
 Plug 'joshdick/onedark.vim'                                " Theme vim
 Plug 'arcticicestudio/nord-vim'
call plug#end()

" source $MYCONF/vim/themes/gruvbox.vim
" source $MYCONF/vim/themes/onedark.vim
 source $MYCONF/vim/themes/nord.vim


 source $MYCONF/vim/plugins/sneak.vim
 source $MYCONF/vim/plugins/signify.vim
 source $MYCONF/vim/plugins/rainbow.vim
 source $MYCONF/vim/plugins/argtextobj.vim
 source $MYCONF/vim/plugins/startify.vim
 source $MYCONF/vim/plugins/airline.vim
 source $MYCONF/vim/plugins/vim-rooter.vim
 source $MYCONF/vim/plugins/vim-tmux-navigator.vim
 " source $MYCONF/vim/plugins/treesitter.vim
 " source $MYCONF/vim/plugins/auto-save.vim
" source $MYCONF/vim/plugins/ale.vim
 source $MYCONF/vim/plugins/coc.vim
 source $MYCONF/vim/plugins/fzf.vim
 source $MYCONF/vim/plugins/devicons.vim
 source $MYCONF/vim/plugins/gutentags.vim
 source $MYCONF/vim/plugins/floaterm.vim

 source $MYCONF/vim/mapping/mapping.vim
 source $MYCONF/vim/plugins/which-key.vim
