###############
#ENV
###############

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export BROWSER=chrome
#Color ls
export CLICOLOR=1
export HISTFILE="$MYPERSO/.zsh_history"
export HISTSIZE=50000
export SAVEHIST=50000
#PATH
export PATH=/usr/local/sbin:$PATH
export PATH=$PATH:$HOME/.local/bin
#NVIM for evryone
export VISUAL=nvim
export EDITOR="$VISUAL"


###############
#ALIAS
###############

alias la="ls -a"
alias v="nvim"
alias terra="terraform"

alias gpmyconf="cd $MYCONF && gaa && gcam 'update myconf' && gl && gp && cd -"

alias sec="$MYPERSO/.sec"
alias vpn='osascript -e "tell application \"/Applications/Tunnelblick.app\"" -e "connect \"config\"" -e "end tell" ; sec'

alias top="glances"

alias home_vpn="ssh pi@192.168.0.50"
alias home_rig1="ssh -i $MYPERSO/credentials/euryale/ssh/mining ad@192.168.0.51"


#Icloud nosync node_modules
alias nosync="find ~/Documents -name node_modules -prune -exec touch {}/.nosync \;"

alias gbc="git --no-pager branch -vr --sort=committerdate"

eval $(thefuck --alias)


###############
# Symlink
###############
mkdir -p ~/.config/nvim
ln -f $MYCONF/vim/init.vim ~/.config/nvim/init.vim 
ln -f $MYCONF/vim/init.vim ~/.vimrc 
ln -f $MYCONF/vim/ideavimrc ~/.ideavimrc 
