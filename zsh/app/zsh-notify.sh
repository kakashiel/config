#! /bin/sh
zsh_add_plugin "marzocchi/zsh-notify"

source $MYZDOTDIR/plugins/zsh-notify/notify.plugin.zsh

zstyle ':notify:*' command-complete-timeout 5

