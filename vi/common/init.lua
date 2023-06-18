-- COMMON
vim.cmd("source $MYCONF/vi/common/config/settings.vim")
vim.cmd("source $MYCONF/vi/common/mapping/mapping.vim")

-- Load plug
-- vim.cmd('source $MYCONF/vi/common/load_plug.vim')
-- Have to manually do it, nvim don't do it
--
-- vim.api.nvim_exec(
-- 	[[
-- let data_dir = stdpath('data') . '/site'
-- execute "source " . expand(data_dir) . "/autoload/plug.vim"
--
-- ]],
-- 	false
-- )

-- Add Vim plugin
-- vim.cmd('source $MYCONF/vi/common/plug.vim')
-- vim.cmd("source $MYCONF/vi/common/plugins/sneak.vim")
-- vim.cmd("source $MYCONF/vi/common/plugins/signify.vim")
-- vim.cmd("source $MYCONF/vi/common/plugins/rainbow.vim")
-- vim.cmd("source $MYCONF/vi/common/plugins/vim-tmux-navigator.vim")
