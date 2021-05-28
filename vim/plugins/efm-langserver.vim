augroup LspEFM
  au!
  autocmd User lsp_setup call lsp#register_server({
      \ 'name': 'efm-langserver',
      \ 'cmd': {server_info->['efm-langserver', '-c=$MYCONF/vim/config.yaml']},
      \ 'allowlist': ['vim', 'eruby', 'markdown', 'yaml'],
      \ })
augroup END

