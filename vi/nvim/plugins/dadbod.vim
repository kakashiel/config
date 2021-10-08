" let g:db = "postgresql://user:password@localhost:5432/db_name"
" let g:db = "postgresql://gtbooking:D8L6xJspQbvaUwukQLqd@localhost:5432/govtech"
" This is just an example. Keep this out of version control. Check for more examples below.
let g:dbs = [
\ { 'name': 'local', 'url': 'postgresql://gtbooking:D8L6xJspQbvaUwukQLqd@localhost:5432/govtech' },
\ { 'name': 'staging', 'url': 'postgres://postgres:mypassword@localhost:5432/my-staging-db' },
\ { 'name': 'wp', 'url': 'mysql://root@localhost/wp_awesome' },
\ ]

"Predefined query
let g:db_ui_table_helpers = {
\   'postgresql': {
\     'List': 'select * from "{table}" order by id asc'
\   }
\ }

"let g:db_ui_auto_execute_table_helpers = 0

" To hide Press ? for help add this to vimrc:
let g:db_ui_show_help = 0

" the drawer width when opened. Default is 40
let g:db_ui_winwidth = 40

" Save all queries here
let g:db_ui_save_location = '~/Users/adrien/Documents/perso/config/'

nnoremap <silent> <leader>du :DBUIToggle<CR>
nnoremap <silent> <leader>df :DBUIFindBuffer<CR>
nnoremap <silent> <leader>dr :DBUIRenameBuffer<CR>
nnoremap <silent> <leader>dl :DBUILastQueryInfo<CR>
