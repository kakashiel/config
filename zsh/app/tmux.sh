#! /bin/sh

###############
# INSTALLATION
###############
if [ ! -d ~/.config/tmux ]; then
	mkdir -p $XDG_CONFIG_HOME/tmux
	ln -f $MYCONF/tmux/tmux.conf $XDG_CONFIG_HOME/tmux/tmux.conf

	git clone https://github.com/tmux-plugins/tpm $XDG_CONFIG_HOME/tmux/plugins/tpm
	tmux start-server
	tmux new-session -d
	$XDG_CONFIG_HOME/tmux/plugins/tpm/scripts/install_plugins.sh
	tmux kill-server
fi
ln -f $MYCONF/tmux/tmux.conf $XDG_CONFIG_HOME/tmux/tmux.conf

###############
#ALIAS
###############
alias t="tmux"
