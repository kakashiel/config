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

" Git diff conflict
nnoremap <leader>gD :Gvdiffsplit!<CR>
nnoremap gdh :diffget //2<CR>
nnoremap gdl :diffget //3<CR>

" Better tabbing
vnoremap < <gv
vnoremap > >gv

"
""""""""
"COMMAND (mac)
"""""""
" Set up iterms 
" https://github.com/neovim/neovim/issues/5052#issuecomment-232083842
vnoremap <M-c> "+y


"==============
"Alt
"==============

" Use alt + maj + hjkl to resize windows
nnoremap <M-J>    :resize -2<CR>
nnoremap <M-K>    :resize +2<CR>
nnoremap <M-H>    :vertical resize -2<CR>
nnoremap <M-L>    :vertical resize +2<CR>
" Use alt + maj + hjkl to resize windows (MAC)
nnoremap Ô    :resize -2<CR>
nnoremap     :resize +2<CR>
nnoremap Ó    :vertical resize -2<CR>
nnoremap Ò    :vertical resize +2<CR>

"==============
"Ctrl
"==============
" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nnoremap <Tab> = :bnext<CR>
nnoremap <S-Tab> = :bprevious<CR>
" Close buffer
nnoremap <C-w> :bd<CR>

"==============
"LEADER
"==============
nnoremap <leader>1 :NERDTreeToggle<esc><CR>
nnoremap <leader>3 :DBUI<esc><CR>

nnoremap <leader>n :NERDTreeFind<CR>
nnoremap <leader>N :NERDTreeToggle<CR>
nnoremap <leader>q :q<CR>

" Single mappings
let g:which_key_map['1'] = 'explorer'
let g:which_key_map['3'] = 'Database explorer'
let g:which_key_map['n'] = 'Nerd tree find'
let g:which_key_map['N'] = 'Nerd tree toggle'

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

