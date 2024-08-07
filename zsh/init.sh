#! /bin/sh
export MYZDOTDIR="$MYCONF/zsh"

#Settings
. "$MYZDOTDIR/config/function.sh"
. "$MYZDOTDIR/config/settings.sh"
. "$MYZDOTDIR/config/alias.sh"
. "$MYZDOTDIR/config/symlinks.sh"
. "$MYZDOTDIR/config/light-and-dark.sh"
. "$MYZDOTDIR/config/notify-if-slow.sh"

#Install
. "$MYZDOTDIR/install/brew.sh"

#Plugin
. "$MYZDOTDIR/plugins.sh"
. "$MYZDOTDIR/config/mappings.sh"

#App
. "$MYZDOTDIR/app/git.sh"
. "$MYZDOTDIR/app/npm.sh"
. "$MYZDOTDIR/app/python.sh"
. "$MYZDOTDIR/app/java.sh"
. "$MYZDOTDIR/app/pass.sh"
. "$MYZDOTDIR/app/tmux.sh"
. "$MYZDOTDIR/app/fzf.sh"
. "$MYZDOTDIR/app/terraform.sh"
. "$MYZDOTDIR/app/zoxide.sh"
. "$MYZDOTDIR/app/nvim.sh"
. "$MYZDOTDIR/app/jetbrain.zsh"
. "$MYZDOTDIR/app/podman.sh"
. "$MYZDOTDIR/app/whisper.sh"

# Script
. "$MYCONF/scripts/init.sh"

# Other project load
. "$MYZDOTDIR/my-other-projects/credentials.sh"
. "$MYZDOTDIR/my-other-projects/credentials-work.sh"
