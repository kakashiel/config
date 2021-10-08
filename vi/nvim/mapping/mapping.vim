" Alternate way to save
if has('nvim')
  " nnoremap <C-s> :w<CR>
  nnoremap <C-w> :w\|BufferClose<CR>
  "nnoremap <C-W> :bd<CR>
endif
" Alternate way to quit
nnoremap <C-Q> :wq!<CR>
" Use control-c instead of escape
nnoremap <C-c> <Esc>

"==============
"LEADER
"==============

" Single mappings
let g:which_key_map['1']       = [ ':NvimTreeToggle'            , 'explorer' ]
let g:which_key_map['3']       = [ ':DBUI'                      , 'Database explorer' ]
let g:which_key_map['n']       = [ ':NERDTreeToggle'            , 'NERDTree' ]
let g:which_key_map['q']       = [ ':q!'                        , 'Save & Quit file' ]
let g:which_key_map['Q']       = [ ':wqa!'                      , 'Save & Quit VIM' ]
let g:which_key_map['-']       = [ '<C-W>s'                     , 'Split below']
let g:which_key_map['|']       = [ '<C-W>v'                     , 'Split right']
let g:which_key_map['z']       = [ 'Goyo'                       , 'Zen' ]
nnoremap <leader>/ :Commentary<esc><CR>
vnoremap <leader>/ :Commentary<CR>
let g:which_key_map['/'] =                                     'Comment'
let g:which_key_map['z'] =                                     'Comment'

nnoremap <leader>n :NERDTreeToggle<CR>


" r is for refactor
let g:which_key_map['r'] = {
                  \ 'name' : '+refactor' ,
                  \ 'o' : [':TSLspOrganize'                  , 'Optimise import'],
                  \ 'a' : [':lua vim.lsp.buf.code_action()<CR>'  , 'Code action'],
                  \ 'n' : [':lua vim.lsp.buf.rename()<CR>'       , 'Rename'],
                  \ 'l' : [':lua vim.lsp.buf.formatting()<CR>'   , 'Format'],
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

" w is for workspace
let g:which_key_map['w'] = {
                  \ 'name' : '+workspace' ,
                  \ 'a' : [':lua vim.lsp.buf.add_workspace_folder()<CR>',                       'Add'],
                  \ 'r' : [':lua vim.lsp.buf.remove_workspace_folder()<CR>',                    'Remove'],
                  \ 'l' : [':lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', 'List'],
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
