#!/bin/sh
#VIM-Mode natif
bindkey -M viins 'jk' vi-cmd-mode
bindkey -M viins 'kj' vi-cmd-mode
bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down

# From man zshzle:
# If one of the VISUAL or EDITOR environment variables contain the string 'vi' when the shell starts up then it will be viins, otherwise it will be emacs. bindkey's -e and -v options provide a convenient way to override this default choice.
# Emacs mode
bindkey -e

bindkey '^P' history-beginning-search-backward
bindkey '^N' history-beginning-search-forward

bindkey "^[[1;3C" forward-word
bindkey "^[[1;3D" backward-word

autoload -U select-word-style
select-word-style bash

#New VIM-Mode
# Can create conflict with other shortcut
# zsh_add_plugin "jeffreytse/zsh-vi-mode"
# function zvm_config() {
#   # ZVM_LINE_INIT_MODE=$ZVM_MODE_INSERT
#   ZVM_VI_INSERT_ESCAPE_BINDKEY=jk
#   ZVM_VI_ESCAPE_BINDKEY=kj
#   ZVM_VI_INSERT_ESCAPE_BINDKEY=jk
# }
