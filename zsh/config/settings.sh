unsetopt BEEP # beeping is annoying

#https://apple.stackexchange.com/questions/427561/macos-zsh-sessions-zsh-history-and-setopt-append-history
SHELL_SESSIONS_DISABLE=1
setopt SHARE_HISTORY

export HISTFILE="$ZDOTDIR/.zsh_history"
export HISTSIZE=50000
export SAVEHIST=80000 # Should be 20% > than HISTSIZE
# if slow delete rm -rf .zsh_sessions/*
fpath+=("/usr/local/share/zsh/site-functions")

###############
#EXPORT
###############
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export CLICOLOR=1 #Color ls

export BROWSER=chrome
if [[ "$OSTYPE" == "darwin"* ]]; then
  BROWSER='"/Applications/Google Chrome.app/Contents/MacOS/Google Chrome" --any --extra --arguments'
fi

#PATH
export PATH="/usr/local/opt/libpq/bin:$PATH"
export PATH=/usr/local/sbin:$PATH
export PATH=$PATH:$HOME/.local/bin
export PATH=$PATH:$HOME/.local/share
export PATH=$PATH:$HOME/.local/share/nvim/lsp_servers
export PATH="/Library/Frameworks/Python.framework/Versions/3.10/bin:$PATH"

#NVIM for evryone
export VISUAL=nvim
export EDITOR="$VISUAL"
