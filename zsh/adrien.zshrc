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
#alias python="python3"

alias vmyconf="vim $MYCONF/myConf/adrien.zshrc"
alias gpmyconf='
cp $HOME/Library/Application\ Support/Code/User/*.json $MYCONF/vscode
cd $MYCONF && gaa && gcam 'update myconf' && gl && gp && cd -
'

alias sec="~/.sec"
alias gitgo='open "$(git open --print)/pull-requests"'
alias top="glances"

alias vimt="vim -c 'ter ++curwin'"
alias vimtt="vim -c 'ter ++curwin' -c 'vert ter'"
alias gitlab="git remote set-url --push --add origin https://gitlab.com/kakashiel/"
alias gpa="gp gitlab master --force --no-verify && gp"
alias gpaf="gp gitlab master --force --no-verify && gpf"
alias gpasup="gp gitlab master --force --no-verify && gpsup"

#Icloud nosync node_modules
alias nosync="find . -name node_modules -exec touch {}/.nosync \;"

###############
# Symlink
###############
mkdir -p ~/.config/nvim
ln -f $MYCONF/vim/init.vim ~/.config/nvim/init.vim 
ln -f $MYCONF/vim/init.vim ~/.vimrc 
ln -f $MYCONF/vim/ideavimrc ~/.ideavimrc 
