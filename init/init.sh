#!/bin/bash
echo "source ~/Documents/perso/config/zsh/.zshrc" >> ~/.zshrc

if [[ $OSTYPE == 'darwin'* ]]; then
  source ./mac/init.sh
fi


MY_OS=`awk -F= "/^NAME/{print $2}" /etc/os-release`

if [[ $MY_OS == *'Ubuntu'* ]]; then
  source ./ubuntu_rig/init.sh
fi

source ./app/zsh.sh

source ./app/tmux.sh
source ./app/vim.sh
