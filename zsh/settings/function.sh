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


# Run the command given by "$@" in the background
# Ex silent_background archey
silent_background() {
  if [[ -n $ZSH_VERSION ]]; then  # zsh:  https://superuser.com/a/1285272/365890
    setopt local_options no_notify no_monitor
    # We'd use &| to background and disown, but incompatible with bash, so:
    "$@" &
  elif [[ -n $BASH_VERSION ]]; then  # bash: https://stackoverflow.com/a/27340076/5353461
    { 2>&3 "$@"& } 3>&2 2>/dev/null
  else  # Unknownness - just background it
    "$@" &
  fi
  disown &>/dev/null  # Close STD{OUT,ERR} to prevent whine if job has already completed
}


#Lazylaoding
#Ex: lazyload nvm -- 'source "$(brew --prefix nvm)/nvm.sh"'

function lazyload {  
  local seperator='--'
  local seperator_index=${@[(ie)$seperator]}
  local cmd_list=(${@:1:(($seperator_index - 1))}); 
  local load_cmd=${@[(($seperator_index + 1))]};   
   
  if [[ ! $load_cmd ]]
  then
    >&2 echo "[ERROR] lazyload: No load command defined"
    >&2 echo "  $@"
    return 1
  fi
  
  # check if lazyload was called by placeholder function
  if (( ${cmd_list[(I)${funcstack[2]}]} ))
  then
    unfunction $cmd_list
    eval "$load_cmd"
  else
    # create placeholder function for each command
    # ${(qqqq)VAR} will quote VAR value as $'...'
    local cmd
    for cmd in $cmd_list
    do
      eval "function $cmd {
        lazyload $cmd_list $seperator ${(qqqq)load_cmd}
        $cmd \"\$@\"
      }"
    done
  fi
}

