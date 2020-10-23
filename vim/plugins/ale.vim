let g:ale_sign_error = '❌'
let g:ale_sign_warning = '⚠️'
" An easier way to jump between linting errors quickly 
nmap <silent> <leader>E <Plug>(ale_previous_wrap)
nmap <silent> <leader>e <Plug>(ale_next_wrap)
