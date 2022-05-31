require "lsp_servers/null_ls"
require "lsp_servers/tsserver"
require "lsp_servers/terraform"

-- Refacto to file
-- link https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#grammarly
-- https://github.com/znck/grammarly
-- https://github.com/cknadler/vim-anywhere
require'lspconfig'.grammarly.setup{
  cmd= { "grammarly-languageserver", "--stdio" },
  filetypes = {"bib", "gitcommit", "markdown", "org", "plaintex", "rst", "rnoweb", "tex" },
  cliendId = '',
  settings= {
    cliendId = ''
  }
}

