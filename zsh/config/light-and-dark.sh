#!/bin/bash

lightMode() {
	tmux source-file $MYCONF/tmux/tmux-light.conf
	kitty +kitten themes --reload-in=all Kaolin Breeze
	export TERM_THEME="light"

}

darkMode() {
	tmux source-file $MYCONF/tmux/tmux-dark.conf
	kitty +kitten themes --reload-in=all Nord
	export TERM_THEME="dark"
}

# macToggle() {
# 	theme=$(defaults read -g AppleInterfaceStyle 2>/dev/null)
# 	if [["$TERM_THEME" != "dark"]] && [[ "$theme" == "Dark" ]]; then
# 	# if [["$TERM_THEME" != "dark"]] && [[ "$theme" == "Dark" ]]; then
# 		darkMode
# 	else
# 		lightMode
# 	fi
#
# }

# TODO Source-file tmux-dark or light is slow find a solution to
# reload it only one time
macToggle() {
	theme=$(defaults read -g AppleInterfaceStyle 2>/dev/null)
	if [[ "$theme" == "Dark" ]]; then
		darkMode
	elif [[ "$theme" == "" ]]; then
		lightMode
	fi

}
macToggle
