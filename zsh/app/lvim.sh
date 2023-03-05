#! /bin/sh
if ! (tail -n 1 ~/.config/lvim/config.lua | grep -q init;) then
    echo 'require "init"' >> ~/.config/lvim/config.lua
fi
