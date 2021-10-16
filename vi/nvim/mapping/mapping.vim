"==============
" LSP
"==============
nnoremap <silent> gh <cmd>lua require'lspsaga.provider'.lsp_finder()<CR>

nnoremap <silent><leader>ca <cmd>lua require('lspsaga.codeaction').code_action()<CR>
vnoremap <silent><leader>ca :<C-U>lua require('lspsaga.codeaction').range_code_action()<CR>

" show hover doc
nnoremap <silent> K <cmd>lua require('lspsaga.hover').render_hover_doc()<CR>
" or use command
nnoremap <silent>K :Lspsaga hover_doc<CR>

" scroll down hover doc or scroll in definition preview
nnoremap <silent> <C-f> <cmd>lua require('lspsaga.action').smart_scroll_with_saga(1)<CR>
" scroll up hover doc
nnoremap <silent> <C-b> <cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1)<CR>

" show signature help
nnoremap <silent> gs <cmd>lua require('lspsaga.signaturehelp').signature_help()<CR>
"Rename
nnoremap <silent>gr <cmd>lua require('lspsaga.rename').rename()<CR>

" preview definition
nnoremap <silent> gd <cmd>lua require'lspsaga.provider'.preview_definition()<CR>
"==============
"LEADER
"==============

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
