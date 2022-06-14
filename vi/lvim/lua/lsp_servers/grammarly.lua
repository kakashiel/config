-- link https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#grammarly
-- https://github.com/znck/grammarly
-- https://github.com/cknadler/vim-anywhere
require'lspconfig'.grammarly.setup{
  --cmd= { "grammarly-languageserver", "--stdio" },
  cmd = { "unofficial-grammarly-language-server", "--stdio" },
  filetypes = {"bib", "gitcommit", "markdown", "org", "plaintex", "rst", "rnoweb", "tex" },
  settings= {}
}
