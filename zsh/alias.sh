###############
#ALIAS
###############

alias la="ls -a"
alias v="nvim"
alias terra="terraform"
alias dc="docker-compose"

alias gpmyconf="cd $MYCONF && g aa && g cam 'update myconf' && g l && g p && cd -"
alias gbc="git --no-pager branch -vr --sort=committerdate"

alias sec="$MYPERSO/.sec"
alias vpn='osascript -e "tell application \"/Applications/Tunnelblick.app\"" -e "connect \"config\"" -e "end tell" ; sec'

alias top="glances"

alias home_vpn="ssh pi@192.168.0.50"
alias home_rig1="ssh -i $MYPERSO/credentials/euryale/ssh/mining ad@192.168.0.51"


#Icloud nosync node_modules
alias nosync="find ~/Documents -name node_modules -prune -exec touch {}/.nosync \;"


eval $(thefuck --alias)


# Colorize grep output (good for log files)
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# confirm before overwriting something
alias cp="cp -i"
alias mv='mv -i'
alias rm='rm -i'


# Alias specifc to an OS
case "$(uname -s)" in

Darwin)
	# echo 'Mac OS X'
	alias ls='ls -G'
	;;

Linux)
	alias ls='ls --color=auto'
	;;

CYGWIN* | MINGW32* | MSYS* | MINGW*)
	# echo 'MS Windows'
	;;
*)
	# echo 'Other OS'
	;;
esac
