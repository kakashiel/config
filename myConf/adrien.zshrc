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
alias terra="terraform"

alias myconf="vim $MYCONF/myConf/adrien.zshrc"
alias gpmyconf='
cp $HOME/.vim/coc-settings.json $MYCONF/vim/
cp $HOME/Library/Application\ Support/Code/User/settings.json $MYCONF/vscode
cd $MYCONF && gaa && gcam 'update myconf' && gl && gp && cd -'

alias sec="~/.sec"

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

