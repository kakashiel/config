if exists('g:started_by_firenvim') 
  set guifont=monospace:h13
  set laststatus=0 nonumber noruler noshowcmd

endif

if exists('g:started_by_firenvim')
  set laststatus=0
  augroup firenvim
    autocmd!
    autocmd BufEnter *.txt setlocal filetype=markdown.pandoc
  augroup END
endif

