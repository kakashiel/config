#! /bin/sh

###############
#EXPORT
###############
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export BROWSER=chrome
# export ZDOTDIR="$MYCONF/zsh"

#Color ls
export CLICOLOR=1
export HISTFILE="$MYPERSO/.zsh_history"
export HISTSIZE=50000
export SAVEHIST=50000

#PATH
export PATH="/usr/local/opt/libpq/bin:$PATH"
export PATH=/usr/local/sbin:$PATH
export PATH=$PATH:$HOME/.local/bin
export PATH=$PATH:$HOME/.local/share
export PATH=$PATH:$HOME/.local/share/nvim/lsp_servers
export PATH=/opt/homebrew/bin/:$PATH


#NVIM for evryone
export VISUAL=lvim
export EDITOR="$VISUAL"


