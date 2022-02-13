let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
" create folder if not present
if has('nvim')
  if !isdirectory(glob(data_dir . '/autoload'))
    call mkdir(glob(data_dir . '/autoload'), "p")
  endif
endif
" Download plug.vim
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
