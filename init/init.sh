#!/bin/bash
if [[ $OSTYPE == 'darwin'* ]]; then
  source ./os/mac/init.sh
fi

awk -F= '/^NAME/{print $2}' /etc/os-release
source ./app/zsh.sh

source ./app/tmux.sh
