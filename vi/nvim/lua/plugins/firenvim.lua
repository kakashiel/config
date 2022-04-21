vim.api.nvim_exec(
[[
if exists('g:started_by_firenvim') && g:started_by_firenvim
    set guifont=monospace:h13
    set laststatus=0 nonumber noruler noshowcmd

    augroup firenvim
        autocmd!
        autocmd BufEnter *.txt setlocal filetype=markdown.pandoc
    augroup END
endif
]],
true)

