#! /bin/sh
mkdir -p ~/.config
#NVIM
ln -sf $MYCONF/vi/nvim ~/.config

# Add the common init
if ! (head -n 1 ~/.config/nvim/init.lua | grep -q dofile); then
	STRING='dofile(os.getenv("MYCONF").."/vi/common/init.lua")'
	TO_FILE=~/.config/nvim/init.lua
	# Add at the begining of the file
	echo $STRING | cat - $TO_FILE >temp && mv temp $TO_FILE
fi
