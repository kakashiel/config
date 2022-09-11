-- COMMON
vim.cmd('source $MYCONF/vi/common/config/settings.vim')
vim.cmd('source $MYCONF/vi/common/mapping/mapping.vim')

vim.cmd('source $MYCONF/vi/common/load_plug.vim')
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


require "treesitter"
require "plugins_lvim"
require "lsp_servers"
require "plugins.autosave"
require "plugins.neoscroll"
require "plugins.telescope"
-- require "plugins.auto-dark-mode"
require "mappings"

lvim.format_on_save = false


-- NVIM
vim.opt.clipboard = ""
print('end')
