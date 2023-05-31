#! /bin/sh

###############
#ALIAS
###############

alias g='git'
# Find root with .git file
alias groot='cd $(git rev-parse --show-toplevel)'
# Open PR
alias gitgo='open "$(git open --print)/pull-requests"'
# Set remote
alias gpup='git push --set-upstream origin $(git symbolic-ref --short HEAD)'
# List branch by date
alias gbc="git --no-pager branch -vr --sort=committerdate"

###############
# Symlink
###############

ln -f $MYCONF/git/gitconfig ~/.gitconfig
