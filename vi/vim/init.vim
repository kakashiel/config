source $MYCONF/vi/common/config/settings.vim
source $MYCONF/vi/common/config/autocmd.vim
source $MYCONF/vi/common/mapping/mapping.vim
source $MYCONF/vi/common/mapping/mapping-no-ideavim.vim
source $MYCONF/vi/common/load_plug.vim
source $MYCONF/vi/common/plug.vim


source $MYCONF/vi/vim/settings.vim
source $MYCONF/vi/vim/plug.vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""PLUGIN CONFIG
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
source $MYCONF/vi/vim/plugins/airline.vim
source $MYCONF/vi/vim/mappings.vim

source $MYCONF/vi/vim/themes/gruvbox.vim
source $MYCONF/vi/vim/themes/onedark.vim
source $MYCONF/vi/vim/plugins/devicons.vim
source $MYCONF/vi/vim/plugins/gutentags.vim
source $MYCONF/vi/vim/plugins/goyo.vim


"COMMON
source $MYCONF/vi/common/plugins/sneak.vim
source $MYCONF/vi/common/plugins/signify.vim
source $MYCONF/vi/common/plugins/rainbow.vim
source $MYCONF/vi/common/plugins/argtextobj.vim
source $MYCONF/vi/common/plugins/vim-tmux-navigator.vim

if $TERM_THEME != "light"
  source $MYCONF/vi/vim/themes/nord.vim
else
  set background=light
  " let g:gruvbox_contrast_dark = 'hard' 
  colorscheme gruvbox 
endif
