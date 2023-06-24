" Change cursor shape on different mode
if empty($TMUX)
  " Vertical bar in insert mode
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  " Block in normal mode
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
  " Underline in replace mode
  let &t_SR = "\<Esc>]50;CursorShape=2\x7"
else
  " Vertical bar in insert mode
  let &t_SI = "\e[5 q"
  " Block in normal mode
  let &t_SR = "\e[4 q"
  " Underline in replace mode
  let &t_EI = "\e[1 q"
endif

"Use relative numbers in normal mode only for an active buffer; use absolute numbers everywhere else.
augroup numbertoggle
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
    autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

 " Autoreload after modifying .vimrc.
 augroup reload_vimrc " {
     autocmd!
     autocmd BufWritePost $MYVIMRC source $MYVIMRC
 augroup END " }

 " Save when losing focust
au FocusLost * silent! wa

