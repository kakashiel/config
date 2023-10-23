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

" Use clipboard 
noremap Y "+y
noremap P "+p
" keep the copy don't replace with selection
xnoremap <leader>p "_dP

" Better tabbing
vnoremap < <gv
vnoremap > >gv


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

nnoremap <C-s> :wa<CR>


"==============
"LEADER
"==============
nnoremap <leader>q :q<CR>

" Close buffer
nnoremap <leader>w :bd<CR>
" Close buffer expect current one
nnoremap <leader>bc :%bd\|e#\|bd#<CR> 
"Tab = Ctrl+i
" nnoremap <Tab> = :bnext<CR>
" nnoremap <S-Tab> = :bprevious<CR>
"
xmap <leader>/ <Plug>Commentary



