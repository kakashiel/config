#! /bin/sh

###############
#ALIAS
###############

alias la="ls -a"
alias ll="ls -al"
alias v="lvim"
alias dc="docker-compose"

alias valias='v $MYCONF/zsh/alias.sh'

alias gpmyconf="cd $MYCONF && g aa && g cam '[AL] Auto push conf' && g l && g p && cd -"
alias ide=". $MYCONF/scripts/idea_lauch.sh"
alias gpleet="cd $MYPERSO/leetcode && g aa && g cam '[AL] Auto push leetcode' && g l && g p && cd -"
alias gbc="git --no-pager branch -vr --sort=committerdate"
alias groot='cd $(git rev-parse --show-toplevel)'
alias tfmt="groot; t fmt  -recursive -write=true; cd -"

alias sec="$MYPERSO/.sec"

alias note="v $MYPERSO/writting/note.md"
alias todo="v $MYPERSO/writting/todo.md"
alias diary="v $MYPERSO/writting/diary.md"
alias cix="v $MYPERSO/writting/cix.md"

alias gpt='chatgpt'

alias home_vpn="ssh pi@192.168.0.50"
alias home_rig1="ssh -i $MYPERSO/credentials/euryale/ssh/mining ad@192.168.0.51"


# Colorize grep output (good for log files)
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

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
  CYGWIN* | MINGW32* | MSYS* | MINGW*)# echo 'MS Windows'
    ;;
  *)
    # echo 'Other OS'
    ;;
esac
