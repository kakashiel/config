#With brew install z
. /usr/local/etc/profile.d/z.sh

# Check antigen
plugins=(
  ...
  osx
  z
)

###############
#ENV
###############

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export PATH=/usr/local/sbin:$PATH
export BROWSER=chrome
export PATH=$PATH:$HOME/.local/bin

###############
#ALIAS
###############

alias v="nvim"
alias t="tmux"
alias tw="tmuxp load $MYCONF/tmux/sessions/work.yml"
alias t2="tmuxp load $MYCONF/tmux/sessions/t2.yml"
alias t3="tmuxp load $MYCONF/tmux/sessions/t4.yml"
alias terra="terraform"

alias vmyconf="vim $MYCONF/myConf/adrien.zshrc"
alias gpmyconf='
cp $HOME/.vim/coc-settings.json $MYCONF/vim/
cp $HOME/Library/Application\ Support/Code/User/*.json $MYCONF/vscode
cd $MYCONF && gaa && gcam 'update myconf' && gl && gp && cd -
'

alias sec="~/.sec"
alias go='open "$(git open --print)/pull-requests"'
alias top="glances"

alias vimt="vim -c 'ter ++curwin'"
alias vimtt="vim -c 'ter ++curwin' -c 'vert ter'"
alias gitlab="git remote set-url --push --add origin https://gitlab.com/kakashiel/"
alias gpa="gp gitlab master --force --no-verify && gp"
alias gpaf="gp gitlab master --force --no-verify && gpf"
alias gpasup="gp gitlab master --force --no-verify && gpsup"

#Function to see all alias which match the first argument
#ex agrep 'git'
agrep (){
    if [ -z $2 ]; 
        then alias |  grep $1; 
    else 
        alias |  grep -E ''"$1"'.*'"$2"'';
    fi
     
}
alias ag="agrep"

# FZF use Ripgrep for listing the files
export FZF_DEFAULT_COMMAND='rg --files --follow --hidden'

case $(uname -a) in
   *Microsoft*) unsetopt BG_NICE ;;
esac
