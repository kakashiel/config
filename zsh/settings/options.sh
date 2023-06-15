#https://zsh.sourceforge.io/Doc/Release/Options.html#History
unsetopt BEEP # beeping is annoying
# setopt inc_append_history #Share history between every terms
#setopt share_history
#
#https://apple.stackexchange.com/questions/427561/macos-zsh-sessions-zsh-history-and-setopt-append-history
SHELL_SESSIONS_DISABLE=1
setopt SHARE_HISTORY

export HISTFILE="$MYPERSO/.zsh_history"
export HISTSIZE=50000
export SAVEHIST=80000 # Should be 20% > than HISTSIZE
# if slow delete rm -rf .zsh_sessions/*

fpath+=("/usr/local/share/zsh/site-functions")

