#!/bin/bash
echo "export ISPERSO=false" >>~/.zshrc
echo "export ISWORK=false" >>~/.zshrc
echo "source ~/Documents/perso/config/zsh/.zshrc" >>~/.zshrc

MY_OS=$(awk -F= "/^NAME/{print $2}" /etc/os-release)

if [[ $MY_OS == *'Ubuntu'* ]]; then
	source ./ubuntu_rig/init.sh
fi

source ./app/tmux.sh

if [[ $OSTYPE == 'darwin'* ]]; then
	source ~/.zshrc
fi
