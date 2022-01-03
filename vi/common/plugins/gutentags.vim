set statusline+=%{gutentags#statusline()}
let g:gutentags_ctags_exclude = ["*.min.js", "*.min.css", "build", 
      \ "vendor", ".git", "node_modules", "*.vim/bundle/*"]
let g:gutentags_cache_dir = "~/.vim/tags"

