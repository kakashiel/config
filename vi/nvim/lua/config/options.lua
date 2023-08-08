-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
local opt = vim.opt
opt.wildmode = "longest:full,full,list:lastused"
opt.clipboard = ""
-- Not working dont know why tho
-- https://www.reddit.com/r/neovim/comments/pu1yc5/how_to_convert_iskeyword_to_lua_format/
opt.iskeyword:append("-")
vim.opt.iskeyword:append("-")

