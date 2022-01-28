set autoread " Set to auto read when a file is changed from the outside
au FocusGained,BufEnter * :checktime "Trigger autoread
set magic " For regular expressions turn magic on

set t_Co=256                            " Support 256 colors
set mouse=a                             " Enable your mouse
syntax enable                           " Enables syntax highlighing
set colorcolumn=80                      " Linebreak
set hidden                              " Required to keep multiple buffers open multiple buffers
set nowrap                                " WRAP Cut long lines as just one line
"" set tw=500                              " Wrap Linebreak on 500 characters
"" set lbr                                 " Wrap When wrap doesnt cut word
"" set whichwrap+=<,>,h,l,[,]              " Wrap Will move to the previous/next line after reaching first/last character in the line.
set encoding=utf-8                      " The encoding displayed
set pumheight=10                        " Makes popup menu smaller
set fileencoding=utf-8                  " The encoding written to file
set spell spelllang=en_us               " English language state
set lazyredraw                          " Don't redraw while executing macros (good performance config)
set ruler                               " Show the cursor position all the time
set cmdheight=2                         " More space for displaying messages
set iskeyword+=-                        " treat dash separated words as a word text object"
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set showmatch                           " Show matching brackets when text indicator is over them
set mat=1                               " How many tenths of a second to blink when matching brackets
set foldcolumn=1                        " Add a bit extra margin to the left
set conceallevel=0                      " So that I can see `` in markdown files
set tabstop=2                           " Insert 2 spaces for a tab
set shiftwidth=2                        " Change the number of space characters inserted for indentation
set numberwidth=2                       " Change gutter column width
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
 " This line add num line to netrw 
let g:netrw_bufsettings = 'noma nomod nu nowrap ro nobl'
autocmd FileType *  setlocal number relativenumber
au BufWinEnter * set number
set completeopt=menuone,noselect        " Always open popup and user selection


 " Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
      \ if line("'\"") > 0 && line("'\"") <= line("$") |
      \   exe "normal! g`\"" |
      \ endif

augroup myvimrc " auto source
     au!
     au BufWritePost *.lua,*.vim,.vimrc,_vimrc,vimrc,.gvimrc,_gvimrc,gvimrc so $MYVIMRC | if has('gui_running') | so $MYGVIMRC | endif
 augroup END

