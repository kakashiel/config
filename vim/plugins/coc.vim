let g:coc_global_extensions = ['coc-tslint-plugin', 'coc-tsserver', 
      \ 'coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-yank', 
      \'coc-prettier', 'coc-git', 'coc-yaml', 'coc-python']

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Coc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup


" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes


function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction



" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')

" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" use `:OR` for organize import of current buffer
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add status line support, for integration with other plugin, checkout `:h coc-status`

set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

