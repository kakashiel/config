#! /bin/sh
bash <(curl -s https://raw.githubusercontent.com/lunarvim/lunarvim/master/utils/installer/install.sh)

echo 'require "init"' >> ~/.config/lvim/config.lua
