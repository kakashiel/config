#! /bin/sh
export ZDOTDIR=~/
export MYZDOTDIR="$MYCONF/zsh"
. ~/.zsh_profile
#Settings
. "$MYZDOTDIR/config/function.sh"
. "$MYZDOTDIR/config/settings.sh"
. "$MYZDOTDIR/config/alias.sh"
. "$MYZDOTDIR/config/symlinks.sh"
. "$MYZDOTDIR/config/mappings.sh"

#Install
. "$MYZDOTDIR/install/brew.sh"

#Plugin
. "$MYZDOTDIR/plugins.sh"

#App
. "$MYZDOTDIR/app/git.sh"
. "$MYZDOTDIR/app/npm.sh"
. "$MYZDOTDIR/app/python.sh"
. "$MYZDOTDIR/app/pass.sh"
. "$MYZDOTDIR/app/tmux.sh"
. "$MYZDOTDIR/app/fzf.sh"
. "$MYZDOTDIR/app/terraform.sh"
. "$MYZDOTDIR/app/zoxide.sh"
. "$MYZDOTDIR/app/nvim.sh"
. "$MYZDOTDIR/app/zsh-notify.sh"
. "$MYZDOTDIR/app/jetbrain.zsh"

# Script
. "$MYCONF/scripts/init.sh"

# Other project load
. "$MYZDOTDIR/my-other-projects/credentials.sh"
. "$MYZDOTDIR/my-other-projects/credentials-work.sh"
