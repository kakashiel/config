
" Only run linters named in ale_linters settings.
" let g:ale_linters_explicit = 1
"JAVASCRIPT
" Fix files with prettier, and then ESLint.
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%severity%]:[%linter%] %s'
let g:ale_set_loclist = 0
let g:ale_set_quickfix = 1
" Set this if you want to.
" This can be useful if you are combining ALE with
" some other plugin which sets quickfix errors, etc.
let g:ale_keep_list_window_open = 1


"Eslint_d faster than eslint
let g:ale_javascript_eslint_executable = 'eslint_d'
let g:ale_javascript_eslint_use_global = 1

let b:ale_fixers = ['eslint']
" Equivalent to the above.
" let b:ale_fixers = {'javascript': ['prettier', 'eslint']}
