#! /bin/sh

# FZF use Ripgrep for listing the files
export FZF_DEFAULT_COMMAND='rg --files --follow --hidden'

bindkey "ç" fzf-cd-widget
