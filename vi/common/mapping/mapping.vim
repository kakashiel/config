" Create map to add keys to
let mapleader = " "
let maplocalleader = '//'
let g:mapleader = " "
let g:maplocalleader = '//'

let g:which_key_map =  {}
let g:which_key_map_local =  {}

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""MAPPING
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" imap jj <Esc>|                       " No escape
imap jk <Esc>|                       " No escape
imap kj <Esc>|                       " No escape
map 0 ^|                             " Remap VIM 0 to first non-blank character
command! W w !sudo tee % > /dev/null|" :W sudo saves the file 
noremap == <esc>gg=G''<CR>|          "== Fast indent

" Use backspace in normal mode
nnoremap <BS> i<BS><Esc>`^

"Better nav for omnicomplete
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")

" Better tabbing
vnoremap < <gv
vnoremap > >gv

"""""""
"Buffer
"""""""
" TAB in general mode will move to text buffer
nnoremap <silent>    <TAB> :BufferPrevious<CR>
nnoremap <silent>    <S-TAB> :BufferNext<CR>
nnoremap <silent> <Space>bd :BufferOrderByDirectory<CR>
nnoremap <silent> <Space>bl :BufferOrderByLanguage<CR>

"==============
"Alt
"==============

" Use alt + hjkl to resize windows
nnoremap <M-j>    :resize -2<CR>
nnoremap <M-k>    :resize +2<CR>
nnoremap <M-h>    :vertical resize -2<CR>
nnoremap <M-l>    :vertical resize +2<CR>
" Use alt + hjkl to resize windows (MAC)
nnoremap ∆    :resize -2<CR>
nnoremap ˚    :resize +2<CR>
nnoremap ˙    :vertical resize -2<CR>
nnoremap ¬    :vertical resize +2<CR>

"==============
"Ctrl
"==============
" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Close buffer
nnoremap <C-w> :bd<CR>
if has('nvim')
  " nnoremap <C-s> :w<CR>
  nnoremap <C-w> :BufferClose<CR>
endif
"==============
"LEADER
"==============
nnoremap <leader>1 :NERDTreeToggle<esc><CR>
nnoremap <leader>3 :DBUI<esc><CR>

nnoremap <leader>gs :G<CR>
nnoremap <leader>gf :diffget //2<CR>
nnoremap <leader>gj :diffget //3<CR>
nnoremap <leader>n :NERDTreeFind<CR>
nnoremap <leader>N :NERDTreeToggle<CR>
nnoremap <leader>z :Goyo<CR>
nnoremap <leader>/ :Commentary<esc><CR>
vnoremap <leader>/ :Commentary<CR>
" Single mappings
let g:which_key_map['1'] = 'explorer'
let g:which_key_map['3'] = 'Database explorer'
let g:which_key_map['gs'] = 'git status'
let g:which_key_map['gf'] = 'git diff get local'
let g:which_key_map['gj'] = 'git diff get remote'
let g:which_key_map['n'] = 'NERDTree'
let g:which_key_map['N'] = 'NERDTree'
let g:which_key_map['z'] = 'Zen'
let g:which_key_map['/'] = 'Comment'

"==============
"LOCALLEADER
"==============


" w is for windows
let g:which_key_map_local['w'] = {
                  \ 'name' : '+windows' ,
                  \ 'w' : ['<C-W>w'     , 'other-window']          ,
                  \ 'd' : ['<C-W>c'     , 'delete-window']         ,
                  \ '-' : ['<C-W>s'     , 'split-window-below']    ,
                  \ '|' : ['<C-W>v'     , 'split-window-right']    ,
                  \ '2' : ['<C-W>v'     , 'layout-double-columns'] ,
                  \ 'h' : ['<C-W>h'     , 'window-left']           ,
                  \ 'j' : ['<C-W>j'     , 'window-below']          ,
                  \ 'l' : ['<C-W>l'     , 'window-right']          ,
                  \ 'k' : ['<C-W>k'     , 'window-up']             ,
                  \ 'H' : ['<C-W>5<'    , 'expand-window-left']    ,
                  \ 'J' : [':resize +5'  , 'expand-window-below']   ,
                  \ 'L' : ['<C-W>5>'    , 'expand-window-right']   ,
                  \ 'K' : [':resize -5'  , 'expand-window-up']      ,
                  \ '=' : ['<C-W>='     , 'balance-window']        ,
                  \ 's' : ['<C-W>s'     , 'split-window-below']    ,
                  \ 'v' : ['<C-W>v'     , 'split-window-below']    ,
                  \ '?' : ['Windows'    , 'fzf-window']            ,
                  \ }
" b is for buffer
let g:which_key_map_local.b = {
                  \ 'name' : '+buffer' ,
                  \ '1' : ['b1'        , 'buffer 1']        ,
                  \ '2' : ['b2'        , 'buffer 2']        ,
                  \ 'd' : ['bd'        , 'delete-buffer']   ,
                  \ 'f' : ['bfirst'    , 'first-buffer']    ,
                  \ 'h' : ['Startify'  , 'home-buffer']     ,
                  \ 'l' : ['blast'     , 'last-buffer']     ,
                  \ 'n' : ['bnext'     , 'next-buffer']     ,
                  \ 'p' : ['bprevious' , 'previous-buffer'] ,
                  \ '?' : ['Buffers'   , 'fzf-buffer']      ,
                  \ }

