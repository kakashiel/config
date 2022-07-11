#! /bin/sh
export ZDOTDIR=~/
export MYZDOTDIR="$MYCONF/zsh"
. ~/.zsh_profile
#Settings
. "$MYZDOTDIR/settings/function.sh"
. "$MYZDOTDIR/settings/options.sh"

. "$MYZDOTDIR/exports.sh"
. "$MYZDOTDIR/alias.sh"
. "$MYZDOTDIR/symlinks.sh"
. "$MYZDOTDIR/mappings.sh"

#Plugin
. "$MYZDOTDIR/app/brew.sh"
. "$MYZDOTDIR/plugins.sh"

#App
. "$MYZDOTDIR/app/git.sh"
. "$MYZDOTDIR/app/npm.sh"
. "$MYZDOTDIR/app/python.sh"
# source $MYCONF/zsh/app/android.sh
. "$MYZDOTDIR/app/pass.sh"
. "$MYZDOTDIR/app/tmux.sh"
. "$MYZDOTDIR/app/fzf.sh"
# source $MYCONF/zsh/app/java.zsh
. "$MYZDOTDIR/app/kubernetes.sh"
. "$MYZDOTDIR/app/aws.sh"
. "$MYZDOTDIR/app/terraform.sh"
. "$MYZDOTDIR/app/zoxide.sh"

#Work
alias phx="$MYCONF/work/trust/sec.sh"

