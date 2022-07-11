export MYDOC=~/Documents
export MYWORK=$HOME/work
export MYPERSO=$MYDOC/perso
export MYCONF=$MYPERSO/config


#M1
# if [[ $(uname -m) == 'arm64' ]]; then
#   echo M1
# fi

source $MYCONF/zsh/init.sh

eval "$(starship init zsh)"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

