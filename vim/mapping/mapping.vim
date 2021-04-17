" Create map to add keys to
let mapleader = " "
let maplocalleader = "//"

let g:which_key_map =  {}
let g:which_key_map_local =  {}

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""MAPPING
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
imap jj <Esc>|                       " No escape
map 0 ^|                             " Remap VIM 0 to first non-blank character
command! W w !sudo tee % > /dev/null|" :W sudo saves the file 
noremap == <esc>gg=G''<CR>|          "== Fast indent
"Better nav for omnicomplete
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")

"""""""
"Buffer
"""""""
" TAB in general mode will move to text buffer
nnoremap <silent>    <TAB> :BufferPrevious<CR>
nnoremap <silent>    <S-TAB> :BufferNext<CR>
" Move to previous/next
nnoremap <silent>    <A-,> :BufferPrevious<CR>
nnoremap <silent>    <A-.> :BufferNext<CR>
" Re-order to previous/next
nnoremap <silent>    <A-<> :BufferMovePrevious<CR>
nnoremap <silent>    <A->> :BufferMoveNext<CR>
" Magic buffer-picking mode
nnoremap <silent> <C-s>    :BufferPick<CR>
" Sort automatically by...
nnoremap <silent> <Space>bd :BufferOrderByDirectory<CR>
nnoremap <silent> <Space>bl :BufferOrderByLanguage<CR>
" Better tabbing
vnoremap < <gv
vnoremap > >gv

"Vim terminal mode
tnoremap <Esc> <C-\><C-n> 
tnoremap jj <C-\><C-n>

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

" Alternate way to save
" nnoremap <C-s> :w<CR>
nnoremap <C-w> :w\|BufferClose<CR>
nnoremap <C-W> :bd<CR>
" Alternate way to quit
nnoremap <C-Q> :wq!<CR>
" Use control-c instead of escape
nnoremap <C-c> <Esc>
"Intellij mapping
map <C-F> :Ag<CR>
"map <C-S-O> :Files<CR>
" map <C-e> :Buffers<CR>


"==============
"LEADER
"==============
"
" Single mappings
let g:which_key_map['1']       = [ ':NvimTreeToggle'            , 'explorer' ]
let g:which_key_map['3']       = [ ':DBUI'                      , 'Database explorer' ]
let g:which_key_map['n']       = [ ':NERDTreeToggle'            , 'NERDTree' ]
let g:which_key_map['q']       = [ ':q!'                        , 'Save & Quit file' ]
let g:which_key_map['Q']       = [ ':wqa!'                      , 'Save & Quit VIM' ]
let g:which_key_map['w']       = [ ':w'                         , 'Save' ]
let g:which_key_map['-']       = [ '<C-W>s'                     , 'Split below']
let g:which_key_map['|']       = [ '<C-W>v'                     , 'Split right']
let g:which_key_map['z']       = [ 'Goyo'                       , 'Zen' ]
nnoremap <leader>/ :Commentary<esc><CR>
vnoremap <leader>/ :Commentary<CR>
" let g:which_key_map['/'] =                                     'Comment'
nnoremap <silent> <leader>e <cmd>lua vim.lsp.diagnostic.goto_prev()<CR>
let g:which_key_map['e'] =                                    'Next error'
nnoremap <silent> <leader>E <cmd>lua vim.lsp.diagnostic.goto_next()<CR>
let g:which_key_map['E'] =                                    'Previous error'


" nnoremap <C-n> :NvimTreeToggle<CR>
" nnoremap <leader>r :NvimTreeRefresh<CR>
" nnoremap <leader>n :NvimTreeFindFile<CR>
nnoremap <leader>n :NERDTreeToggle<CR>

if has('nvim')
  " LSP config (the mappings used in the default file don't quite work right)
  nnoremap <silent> gh <cmd>lua require'lspsaga.provider'.lsp_finder()<CR>
  " nnoremap <silent> gh :Lspsaga lsp_finder<CR>
  nnoremap <silent> gs :Lspsaga signature_help<CR>
  " nnoremap <silent> gs <cmd>lua require('lspsaga.signaturehelp').signature_help()<CR>
  " nnoremap <silent>gr <cmd>lua require('lspsaga.rename').rename()<CR>
  nnoremap <silent>gr :Lspsaga rename<CR>
  nnoremap <silent> gd <cmd>lua require'lspsaga.provider'.preview_definition()<CR>
  nnoremap <silent> gd :Lspsaga preview_definition<CR>
  " nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>
  nnoremap <silent> gD <cmd>lua vim.lsp.buf.declaration()<CR>
  nnoremap <silent> gr <cmd>lua vim.lsp.buf.references()<CR>
  nnoremap <silent> gi <cmd>lua vim.lsp.buf.implementation()<CR>
  nnoremap <silent> K <cmd>lua vim.lsp.buf.hover()<CR>
  nnoremap <silent> <C-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
  nnoremap <silent> <leader>r <cmd>lua vim.lsp.diagnostic.rename()<CR>
  nnoremap <silent> <leader>l <cmd>lua vim.lsp.diagnostic.formatting()<CR>
endif
" r is for refactor
let g:which_key_map['r'] = {
                  \ 'name' : '+refactor' ,
                  \ 'o' : [':OR'                             , 'Optimise import'],
                  \ 'a' : [':Lspsaga code_action'            , 'Code action'],
                  \ 'r' : [':lua vim.lsp.buf.rename()'       , 'Rename'],
                  \ 'l' : [':lua vim.lsp.buf.formatting()'   , 'Format'],
                  \ }

" f is for find
let g:which_key_map['f'] = {
                  \ 'name' : '+find' ,
                  \ 'b' : [':Telescope buffers'         , 'current buffer'],
                  \ 'f' : [':Telescope find_files'      , 'files'],
                  \ 'g' : [':Telescope live_grep'       , 'Grep text'],
                  \ 'o' : [':Telescope live_grep'       , 'Grep text'],
                  \ 'l' : [':Telescope builtin'         , 'List search'],
                  \ 'm' : [':Telescope marks'           , 'marks'],
                  \ 's' : [':Telescope git_status'      , 'modified git files'],
                  \ }

"==============
"LOCALLEADER
"==============

let g:which_key_map_local['S'] = [ ':Startify'        , 'start screen' ]

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


" t is for terminal
let g:which_key_map_local.t = {
                  \ 'name' : '+terminal' ,
                  \ ';' : [':FloatermNew --wintype=popup --height=6 --cmd="zsh"'   , 'terminal'],
                  \ 'f' : [':FloatermNew fzf'                          , 'fzf'],
                  \ 'g' : [':FloatermNew lazygit'                      , 'git'],
                  \ 'd' : [':FloatermNew lazydocker'                   , 'docker'],
                  \ 'n' : [':FloatermNew node'                         , 'node'],
                  \ 'N' : [':FloatermNew nnn'                          , 'nnn'],
                  \ 'p' : [':FloatermNew python'                       , 'python'],
                  \ 'r' : [':FloatermNew ranger'                       , 'ranger'],
                  \ 't' : [':FloatermToggle'                           , 'toggle'],
                  \ 'y' : [':FloatermNew ytop'                         , 'ytop'],
                  \ 's' : [':FloatermNew ncdu'                         , 'ncdu'],
                  \ 'c' : [':FloatermNew --wintype=floating ranger --cmd="cd ~"'   , 'cd'],
                  \ 'T' : [':FloatermNew --wintype=floating terminal -cmd="bash"'  , 'cd'],
                  \ }

" s is for Session
let g:which_key_map_local.s = {
                  \ 'name' : '+Session' ,
                  \ 's' : [':SSave'             , 'Save session'],
                  \ 'd' : [':SDelete'           , 'Delete session'],
                  \ 'c' : [':SClose'            , 'Close session'],
                  \ 'l' : [':SLoad'             , 'Load session'],
                  \ }

" p is for Plug
let g:which_key_map_local.p = {
                  \ 'name' : '+Plug' ,
                  \ 's' : [':PlugStatus'            , 'Status'],
                  \ 'i' : [':PlugInstall'           , 'Install'],
                  \ 'u' : [':PlugUpdate'            , 'Update'],
                  \ 'd' : [':PlugDiff'              , 'Diff'],
                  \ 'c' : [':PlugClean'             , 'Clean'],
                  \ 'U' : [':PlugUpgrade'           , 'Upgrade'],
                  \ }

" c is for config
let g:which_key_map_local.c = {
                  \ 'name' : '+Config' ,
                  \ 'v' : [':e $MYCONF/vim/my_configs.vim'         , 'Open vimrc'],
                  \ 'k' : [':e $MYCONF/vim/mapping/mapping.vim'    , 'Open which-key'],
                  \ 'z' : [':e $MYCONF/myCon/adrien.zshrc'         , 'Open zshrc'],
                  \ 'i' : [':e $MYCONF/install_mac.sh'             , 'Install mac script'],
                  \ 'c' : [':CocConfig'                            , 'Open coc config'],
                  \ }
" g is for git
let g:which_key_map_local.g = {
                  \ 'name' : '+GIT' ,
                  \ 'a' : [':Git add'         , ':Git add'],
                  \ 'c' : [':Git commit'      , ':Git commit'],
                  \ 'P' : [':Git push'        , ':Git push'],
                  \ 'p' : [':Git pull'        , ':Git pull'],
                  \ 'd' : [':Git diff'        , ':Git diff'],
                  \ 'D' : [':Gdiffsplit'      , 'Diff split'],
                  \ 'l' : [':Git log'         , 'Log'],
                  \ 'L' : [':GV'              , 'Commit browser'],
                  \ 'b' : [':Git blame'       , 'Blame'],
                  \ 's' : [':GStatus'         , 'Status'],
                  \ 'r' : [':GRemove'         , 'Remove'],
                  \ 'g' : [':GBrowse'         , 'Browse'],
                  \ }
