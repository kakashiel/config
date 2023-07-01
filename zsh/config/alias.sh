#! /bin/sh

###############
#COMMON
###############

alias la="ls -a"
alias ll="ls -al"
alias v="nvim"
alias dc="docker-compose"

# Colorize grep output (good for log files)
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

###############
# Quick edit
###############
alias vzsh='v $MYCONF/zsh/init.sh'
alias note="v $MYPERSO/writting/note.md"
alias todo="v $MYPERSO/writting/todo.md"
alias diary="v $MYPERSO/writting/diary.md"
alias anki="vim  //tmp/diary.md -c \"set nospell\""
alias vjson="v //tmp/test.json"

###############
# Git push
###############
alias gpmyconf="cd $MYCONF && g aa && g cam '[AL] Auto push conf' && g l && g p && cd -"
alias gpleet="cd $MYPERSO/leetcode && g aa && g cam '[AL] Auto push leetcode' && g l && g p && cd -"

###############
# MY HOME
###############
alias home_vpn="ssh pi@192.168.0.50"
alias home_rig1="ssh -i $MYPERSO/credentials/euryale/ssh/mining ad@192.168.0.51"

alias ide=". $MYCONF/scripts/idea_lauch.sh"
alias gpt="python3 ~/.local/share/gpt-cli/gpt.py"

# Alias specifc to an OS
case "$(uname -s)" in

Darwin) # echo 'Mac OS X'
	alias chrome="open -a 'Google Chrome'"
	#Icloud nosync node_modules
	alias nosync="find ~/Documents -name node_modules -prune -exec touch {}/.nosync \;"
	alias vpn='osascript -e "tell application \"/Applications/Tunnelblick.app\"" -e "connect \"client\"" -e "end tell" ; sec'
	;;
Linux)
	alias ls='ls --color=auto'
	;;
CYGWIN* | MINGW32* | MSYS* | MINGW*) # echo 'MS Windows'
	;;
*)
	# echo 'Other OS'
	;;
esac
