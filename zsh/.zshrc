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


####################
# Pure prompt [START]
####################
# TODO: Move to a dedicated file
zsh_add_plugin "sindresorhus/pure"
fpath+=($MYZDOTDIR/plugins/pure)

zstyle :prompt:pure:git:stash show yes

# prepend datetime to pure prompt
eval "original_$(declare -f prompt_pure_preprompt_render)"
prompt_pure_preprompt_render() {
  local prompt_pure_date_color='239'
  local prompt_pure_date_format="[%H:%M:%S] "
  zstyle -t :prompt:pure:date color
  if [ $? -eq 1 ]; then
    zstyle -s :prompt:pure:date color prompt_pure_date_color
  fi
  zstyle -t :prompt:pure:date format
  if [ $? -eq 1 ]; then
    zstyle -s :prompt:pure:date format prompt_pure_date_format
  fi
  local prompt_pure_date=$(date "+$prompt_pure_date_format")
  original_prompt_pure_preprompt_render
  PROMPT="%F{$prompt_pure_date_color}${prompt_pure_date}%f$PROMPT"
}

####################
# Pure prompt [END]
####################

