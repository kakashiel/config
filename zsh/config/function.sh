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

# Function to source files if they exist
function zsh_add_file() {
  [ -f "$MYZDOTDIR/$1" ] && source "$MYZDOTDIR/$1"
}

function zsh_add_plugin() {
  PLUGIN_NAME=$(echo $1 | cut -d "/" -f 2)
  if [ -d "$MYZDOTDIR/plugins/$PLUGIN_NAME" ]; then 
    # For plugins
    zsh_add_file "plugins/$PLUGIN_NAME/$PLUGIN_NAME.plugin.zsh" || \
      zsh_add_file "plugins/$PLUGIN_NAME/$PLUGIN_NAME.zsh"
        else
          mkdir -p "$MYZDOTDIR/plugins/$PLUGIN_NAME"
          git clone "https://github.com/$1.git" "$MYZDOTDIR/plugins/$PLUGIN_NAME"
  fi
}

function zsh_add_completion() {
  PLUGIN_NAME=$(echo $1 | cut -d "/" -f 2)
  if [ -d "$MYZDOTDIR/plugins/$PLUGIN_NAME" ]; then 
    # For completions
    completion_file_path=$(ls $MYZDOTDIR/plugins/$PLUGIN_NAME/_*)
    fpath+="$(dirname "${completion_file_path}")"
    zsh_add_file "plugins/$PLUGIN_NAME/$PLUGIN_NAME.plugin.zsh"
  else
    git clone "https://github.com/$1.git" "$MYZDOTDIR/plugins/$PLUGIN_NAME"
    fpath+=$(ls $MYZDOTDIR/plugins/$PLUGIN_NAME/_*)
    [ -f $MYZDOTDIR/.zccompdump ] && $MYZDOTDIR/.zccompdump
  fi
  completion_file="$(basename "${completion_file_path}")"
  if [ "$2" = true ] && compinit "${completion_file:1}"
}

timezsh() {
  shell=${1-$SHELL}
  for i in $(seq 1 10); do /usr/bin/time $shell -i -c exit; done
}
