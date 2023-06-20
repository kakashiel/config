nnoremap <leader>z :Goyo<CR>
nnoremap <leader>/ :Commentary<esc><CR>
vnoremap <leader>/ :Commentary<CR>


" NERDTREE
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <leader>N :NERDTreeToggle<CR>
" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
" Close the tab if NERDTree is the only window remaining in it.
"
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" FZF
nnoremap <silent> <leader>f :Files<CR>
nnoremap <silent> <leader>o :Files<CR>
nnoremap <silent> <Leader>b :Buffers<CR>
nnoremap <silent> <Leader>, :Buffers<CR>


