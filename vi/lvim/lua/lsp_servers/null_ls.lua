local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
  { exe = "black" },
  { exe = "black", filetypes = { "python" } },
  {
    exe = "prettier",
    args = { "--print-width", "100" },
    filetypes = { "javascript", "javascriptreact","javascript.jsx", "typescript.tsx", "typescript", "typescriptreact" },
  },
  {
    exe = "eslint",
    args = { "--print-width", "100" },
    filetypes = { "javascript", "javascriptreact","javascript.jsx", "typescript.tsx", "typescript", "typescriptreact" },
  },
}

local linters = require "lvim.lsp.null-ls.linters"
linters.setup {
  { exe = "flake8" },
  {
    exe = "shellcheck",
    args = { "--severity", "warning" },
  },
  {
    exe = "codespell",
    filetypes = { "python" },
  },
  {
    exe = "eslint",
    filetypes = { "javascript", "javascriptreact","javascript.jsx", "typescript.tsx", "typescript", "typescriptreact" },
  },
}

local null_ls = require("null-ls")
null_ls.setup({
    sources = {
        null_ls.builtins.diagnostics.eslint,
        null_ls.builtins.code_actions.eslint,
        null_ls.builtins.formatting.eslint
    },
    on_attach = on_attach
})
