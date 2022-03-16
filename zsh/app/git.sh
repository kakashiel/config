#! /bin/sh

###############
#ALIAS
###############

alias g='git'
alias gitgo='open "$(git open --print)/pull-requests"'
alias gitlab="git remote set-url --push --add origin https://gitlab.com/kakashiel/"
alias gpup='git push --set-upstream origin $(git symbolic-ref --short HEAD)'

###############
# Symlink
###############

ln -f $MYCONF/git/gitconfig ~/.gitconfig
