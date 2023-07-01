#! /bin/sh
# Only work with iterm and terminalmarzocchi/zsh-notify
zsh_add_plugin "marzocchi/zsh-notify"

source $MYZDOTDIR/plugins/zsh-notify/notify.plugin.zsh

zstyle ':notify:*' command-complete-timeout 5
zstyle ':notify:*' always-notify-on-failure no
