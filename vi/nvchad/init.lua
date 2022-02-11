-- COMMON
vim.cmd('source $MYCONF/vi/common/config/settings.vim')
vim.cmd('source $MYCONF/vi/common/mapping/mapping.vim')

vim.cmd('source $MYCONF/vi/common/load_plug.vim')
vim.cmd('source $MYCONF/vi/common/plug.vim')
--
-- vim.cmd('source $MYCONF/vi/common/plugins/nerdtree.vim')
vim.cmd('source $MYCONF/vi/common/plugins/sneak.vim')
vim.cmd('source $MYCONF/vi/common/plugins/signify.vim')
vim.cmd('source $MYCONF/vi/common/plugins/rainbow.vim')
vim.cmd('source $MYCONF/vi/common/plugins/argtextobj.vim')
vim.cmd('source $MYCONF/vi/common/plugins/gutentags.vim')
vim.cmd('source $MYCONF/vi/common/plugins/vim-tmux-navigator.vim')
-- NVIM

-- MAPPINGS
local map = require("core.utils").map

require "custom.mappings"

