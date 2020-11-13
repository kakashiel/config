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

" TAB in general mode will move to text buffer
nnoremap <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <S-TAB> :bprevious<CR>

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
nnoremap <C-s> :w<CR>
nnoremap <C-w> :w\|bd<CR>
nnoremap <C-W> :bd<CR>
" Alternate way to quit
nnoremap <C-Q> :wq!<CR>
" Use control-c instead of escape
nnoremap <C-c> <Esc>
"Intellij mapping
map <C-F> :Ag<CR>
"map <C-S-O> :Files<CR>
map <C-e> :Buffers<CR>
"================
"Cmd (NeoVim)
"================
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

"==============
"LEADER
"==============
"
" Single mappings
let g:which_key_map['1']       = [ ':CocCommand explorer'       , 'explorer' ]
let g:which_key_map['n']       = [ ':NERDTreeToggle'            , 'NERDTree' ]
let g:which_key_map['q']       = [ ':wq!'                       , 'Save & Quit File' ]
let g:which_key_map['Q']       = [ ':wqa!'                      , 'Save & Quit VIM' ]
let g:which_key_map['w']       = [ ':w'                         , 'Save' ]
let g:which_key_map['o']       = [ ':Files'                     , 'Search files' ]
let g:which_key_map['l']       = [ ':CocCommand eslint.executeAutofix'  , 'Eslint']
let g:which_key_map['-']       = [ '<C-W>s'                     , 'Split below']
let g:which_key_map['|']       = [ '<C-W>v'                     , 'Split right']
let g:which_key_map['z']       = [ 'Goyo'                       , 'Zen' ]
nnoremap <leader>/ :Commentary<esc><CR>
vnoremap <leader>/ :Commentary<CR>
let g:which_key_map['/'] =                                     'Comment'
let g:which_key_map['f'] =                                     'Search text'
nnoremap <Leader>f :CocSearch<Space>
nmap <silent> <leader>E <Plug>(ale_previous_wrap)
nmap <silent> <leader>e <Plug>(ale_next_wrap)
let g:which_key_map['e'] =                                    'Next error'
let g:which_key_map['E'] =                                   'Previous error'


" r is for refactor
let g:which_key_map['r'] = {
                  \ 'name' : '+refactor' ,
                  \ 'o' : [':OR'                      , 'Optimise import'],
                  \ 'r' : ['<Plug>(coc-rename)'       , 'Rename'],
                  \ 'a' : ['<Plug>(coc-codeaction)'   , 'Code action'],
                  \ '/' : ['<Plug>(coc-fix-current)'  , 'Autofix'],
                  \ 'f' : ['<Plug>(coc-format-selected)'  , 'Format'],
                  \ 'l' : [':CocCommand eslint.executeAutofix'  , 'Eslint'],
                  \ }

" s is for search
let g:which_key_map['s'] = {
                  \ 'name' : '+search' ,
                  \ '/' : [':History/'     , 'history'],
                  \ ';' : [':Commands'     , 'commands'],
                  \ 'a' : [':Ag'           , 'text Ag'],
                  \ 'b' : [':BLines'       , 'current buffer'],
                  \ 'B' : [':Buffers'      , 'open buffers'],
                  \ 'c' : [':Commits'      , 'commits'],
                  \ 'C' : [':BCommits'     , 'buffer commits'],
                  \ 'f' : [':Files'        , 'files'],
                  \ 'g' : [':GFiles'       , 'git files'],
                  \ 'G' : [':GFiles?'      , 'modified git files'],
                  \ 'h' : [':History'      , 'file history'],
                  \ 'H' : [':History:'     , 'command history'],
                  \ 'l' : [':Lines'        , 'lines'] ,
                  \ 'm' : [':Marks'        , 'marks'] ,
                  \ 'M' : [':Maps'         , 'normal maps'] ,
                  \ 'p' : [':Helptags'     , 'help tags'] ,
                  \ 'P' : [':Tags'         , 'project tags'],
                  \ 's' : [':Snippets'     , 'snippets'],
                  \ 'S' : [':Colors'       , 'color schemes'],
                  \ 't' : [':Tags'         , 'tags'],
                  \ 'T' : [':BTags'        , 'buffer tags'],
                  \ 'w' : [':Windows'      , 'search windows'],
                  \ 'y' : [':Filetypes'    , 'file types'],
                  \ 'z' : [':FZF'          , 'FZF'],
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
" C is for coc
let g:which_key_map_local.C = {
                  \ 'name' : '+Coc' ,
                  \ 'i' : [':CocInstall'              , ':CocInstall'],
                  \ 'u' : [':CocUninstall'            , ':CocUninstall '],
                  \ 'l' : [':CocList'                 , ':CocList'],
                  \ 'e' : [':CocList extensions'      , ':CocList extensions'],
                  \ 'c' : [':CocList commands'        , ':CocList commands'],
                  \ 'C' : [':CocConfig'               , ':CocConfig'],
                  \ 'm' : [':CocList marketplace'     , ':CocList marketplace'],
                  \ 'd' : [':CocDiagnostics'          , ':CocDiagnostics'],
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
