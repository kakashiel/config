" Write all buffers before navigating from Vim to tmux pane
" 1 	:update (write the current buffer, but only if changed)
" 2 	:wall (write all buffers)
let g:tmux_navigator_save_on_switch = 2
