
" Map leader to which_key
nnoremap <silent> <leader> :silent WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>
nnoremap <silent> <localleader> :silent <c-u> :silent WhichKey  ','<CR>
vnoremap <silent> <localleader> :silent <c-u> :silent WhichKeyVisual  ','<CR>

" Create map to add keys to
let g:which_key_map =  {}
let g:which_key_map_local =  {}
" Define a separator
let g:which_key_sep = '→'
" set timeoutlen=100


" Not a fan of floating windows for this
let g:which_key_use_floating_win = 0

" Change the colors if you want
highlight default link WhichKey          Operator
highlight default link WhichKeySeperator DiffAdded
highlight default link WhichKeyGroup     Identifier
highlight default link WhichKeyDesc      Function

" Hide status line
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler

" Single mappings
let g:which_key_map['1']       = [ ':NERDTreeToggle'            , 'NERDTree' ]
let g:which_key_map['n']       = [ ':NERDTreeToggle'            , 'NERDTree' ]
let g:which_key_map['e']       = [ ':CocCommand explorer'       , 'explorer' ]
let g:which_key_map['q']       = [ ':wqa!'                      , 'Save & Quit' ]
let g:which_key_map['f']       = [ ':Files'                     , 'search files' ]
let g:which_key_map['h']       = [ '<C-W>s'                     , 'split below']
let g:which_key_map['T']       = [ ':Rg'                        , 'search text' ]
let g:which_key_map['v']       = [ '<C-W>v'                     , 'split right']
let g:which_key_map['z']       = [ 'Goyo'                       , 'zen' ]
nnoremap <localleader>/ :Commentary<esc><CR>
vnoremap <localleader>/ :Commentary<CR>
let g:which_key_map['/']       = 'Comment'
nmap <silent> <localleader>E <Plug>(ale_previous_wrap)
nmap <silent> <localleader>e <Plug>(ale_next_wrap)
let g:which_key_map['e']       = 'Next error'
let g:which_key_map['E']       = 'Previous error'

" s is for search
let g:which_key_map.s = {
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
      \ 't' : [':Rg'           , 'text Rg'],
      \ 'T' : [':BTags'        , 'buffer tags'],
      \ 'w' : [':Windows'      , 'search windows'],
      \ 'y' : [':Filetypes'    , 'file types'],
      \ 'z' : [':FZF'          , 'FZF'],
      \ }

" w is for windows
let g:which_key_map['w'] = {
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
let g:which_key_map.b = {
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
let g:which_key_map.t = {
      \ 'name' : '+terminal' ,
      \ ';' : [':FloatermNew --wintype=popup --height=6'        , 'terminal'],
      \ 'f' : [':FloatermNew fzf'                               , 'fzf'],
      \ 'g' : [':FloatermNew lazygit'                           , 'git'],
      \ 'd' : [':FloatermNew lazydocker'                        , 'docker'],
      \ 'n' : [':FloatermNew node'                              , 'node'],
      \ 'N' : [':FloatermNew nnn'                               , 'nnn'],
      \ 'p' : [':FloatermNew python'                            , 'python'],
      \ 'r' : [':FloatermNew ranger'                            , 'ranger'],
      \ 't' : [':FloatermToggle'                                , 'toggle'],
      \ 'y' : [':FloatermNew ytop'                              , 'ytop'],
      \ 's' : [':FloatermNew ncdu'                              , 'ncdu'],
      \ }



call which_key#register('<Space>', 'g:which_key_map')


let g:which_key_map_local['S'] = [ ':Startify'        , 'start screen' ]

" s is for Session
let g:which_key_map_local.s = {
      \ 'name' : '+Session' ,
      \ 's' : [':SSave'             , 'Save session'],
      \ 'd' : [':SDelete'           , 'Delete session'],
      \ 'c' : [':SClose'            , 'Close session'],
      \ 'r' : [':RestartVim'        , 'Restart vim & session'],
      \ 'v' : [':ViewSession'       , 'View vim session'],
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
      \ 'o' : [':e $MYCONF/vim/my_configs.vim'         , 'Open vimrc'],
      \ 'k' : [':e $MYCONF/vim/plugins/which-key.vim'  , 'Open which-key'],
      \ }

call which_key#register(',', 'g:which_key_map_local')
