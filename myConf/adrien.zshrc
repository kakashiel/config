export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export PATH=/usr/local/sbin:$PATH

export BROWSER=chrome
#With brew install z
. /usr/local/etc/profile.d/z.sh

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  ...
  osx
  z
)
###############
#Prompt
###############
local ret_status="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ %s)"
PROMPT='${ret_status}%{$fg_bold[green]%}%p %{$fg[cyan]%}%c %{$fg_bold[blue]%}$(git_prompt_info)%{$fg_bold[blue]%} % %{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"
###############
#ALIAS
###############

alias v="vagrant"
alias terra="terraform"

alias myconf="vim $MYCONF/myConf/adrien.zshrc"
alias gpmyconf='
cp $HOME/.vim/coc-settings.json $MYCONF/vim/
cp $HOME/Library/Application\ Support/Code/User/*.json $MYCONF/vscode
cd $MYCONF && gaa && gcam 'update myconf' && gl && gp && cd -
'

alias sec="~/.sec"
alias go='open "$(git open --print)/pull-requests"'
alias top="glances"

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
