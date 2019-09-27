export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export BROWSER=chrome
# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  docker
  docker-compose
  kubectl
  iterm2
  tig
  terraform
)

alias v="vagrant"

alias myconf="vim $HOME/config/MyConf/adrien.zshrc"
alias gpmyconf="cd $HOME/config && gaa && gcam 'update myconf' && gl && gp && cd -"

alias vim="nvim"
# Docker completion for MAC
etc=/Applications/Docker.app/Contents/Resources/etc
touch /tmp/zsh.log

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

