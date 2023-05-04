export MYDOC=~/Documents
export MYWORK=$HOME/work
export MYPERSO=$MYDOC/perso
export MYCONF=$MYPERSO/config


#M1
# if [[ $(uname -m) == 'arm64' ]]; then
#   echo M1
# fi

source $MYCONF/zsh/init.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


# Load starship prompt
# eval "$(starship init zsh)"

zsh_add_plugin "sindresorhus/pure"
fpath+=($MYZDOTDIR/plugins/pure)

