-- COMMON
vim.cmd('source $MYCONF/vi/common/config/settings.vim')
vim.cmd('source $MYCONF/vi/common/mapping/mapping.vim')
--
vim.cmd('source $MYCONF/vi/common/load_plug.vim')
vim.cmd('source $MYCONF/vi/common/plug.vim')

-- vim.cmd('source $MYCONF/vi/common/plugins/nerdtree.vim')
vim.cmd('source $MYCONF/vi/common/plugins/sneak.vim')
vim.cmd('source $MYCONF/vi/common/plugins/signify.vim')
vim.cmd('source $MYCONF/vi/common/plugins/rainbow.vim')
vim.cmd('source $MYCONF/vi/common/plugins/argtextobj.vim')
vim.cmd('source $MYCONF/vi/common/plugins/gutentags.vim')
vim.cmd('source $MYCONF/vi/common/plugins/vim-tmux-navigator.vim')

-- NVIM 
--
-- NVCHAD 

-- Please check NvChad docs if you're totally new to nvchad + dont know lua!!
-- This is an example init file in /lua/custom/
-- this init.lua can load stuffs etc too so treat it like your ~/.config/nvim/

-- MAPPINGS
local map = require("core.utils").map

map("n", "<leader>cc", ":Telescope <CR>")
map("n", "<leader>q", ":q <CR>")

-- NOTE: the 4th argument in the map function is be a table i.e options but its most likely un-needed so dont worry about it
