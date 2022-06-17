-- COMMON
vim.cmd('source $MYCONF/vi/common/config/settings.vim')
vim.cmd('source $MYCONF/vi/common/mapping/mapping.vim')

--vim.cmd('source $MYCONF/vi/common/load_plug.vim')
-- This file has to be manualy load a lunarvim dont do it :(
vim.api.nvim_exec([[
let data_dir = stdpath('data') . '/site' 
execute "source " . expand(data_dir) . "/autoload/plug.vim"

]], false)

vim.cmd('source $MYCONF/vi/common/plug.vim')
--
vim.cmd('source $MYCONF/vi/common/plugins/sneak.vim')
vim.cmd('source $MYCONF/vi/common/plugins/signify.vim')
vim.cmd('source $MYCONF/vi/common/plugins/rainbow.vim')
vim.cmd('source $MYCONF/vi/common/plugins/vim-tmux-navigator.vim')

local options = {
 syntax="disable"
}

--TODO: Move this
local init_path = debug.getinfo(1, "S").source:sub(2)
local base_dir = init_path:match("(.*[/\\])"):sub(1, -2)
print(base_dir)

if not vim.tbl_contains(vim.opt.rtp:get(), base_dir) then
  vim.opt.rtp:append(base_dir)
end
print(base_dir)

require ("bootstrap"):init(base_dir);
require "impatient"
require "plugins"
require "plugins.treesitter"
require "plugins.theme"
require ("mappings.lunarvim").config();
--vim.cmd('source $MYCONF/vi/nvim/firevim.vim')

