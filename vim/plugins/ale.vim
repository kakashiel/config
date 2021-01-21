let g:ale_sign_error = '❌'
let g:ale_sign_warning = '⚠️'
" An easier way to jump between linting errors quickly 
let g:ale_fixers = {
\   'javascript': ['eslint'],
\   'typescript': ['tslint'],
\}

" let g:ale_typescript_prettier_use_local_config = 1
" let g:ale_linters_explicit = 1

