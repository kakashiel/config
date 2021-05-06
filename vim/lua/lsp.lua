-- LSP
 -- npm install -g vscode-html-languageserver-bin typescript \
 -- typescript-language-server \
 -- eslint_d \
 -- yaml-language-server \
 -- vim-language-server \
 -- vscode-css-languageserver-bin \
 -- dockerfile-language-server-nodejs \
 -- pyright \
 -- bash-language-server

 -- /usr/local/bin/go get github.com/lighttiger2505/sqls
 -- brew install hashicorp/tap/terraform-ls

-- Enable (broadcasting) snippet capability for completion
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

require'lspconfig'.html.setup {
  capabilities = capabilities,
}
require'lspconfig'.sqls.setup{}
require'lspconfig'.tsserver.setup{}
require'lspconfig'.cssls.setup{}
require'lspconfig'.vimls.setup{}
require'lspconfig'.yamlls.setup{}
require'lspconfig'.dockerls.setup{}
require'lspconfig'.terraformls.setup{}
require'lspconfig'.bashls.setup{}
require'lspconfig'.pyright.setup{}

-- ESLINT
require'lspconfig'.diagnosticls.setup{
    filetypes = {"javascript", "typescript"},
    root_dir = function(fname)
      return util.root_pattern("tsconfig.json")(fname) or
      util.root_pattern(".eslintrc.js")(fname);
    end,
    init_options = {
      linters = {
        eslint = {
          command = "./node_modules/.bin/eslint",
          rootPatterns = {".eslintrc.js", ".git"},
          debounce = 100,
          args = {
            "--stdin",
            "--stdin-filename",
            "%filepath",
            "--format",
            "json"
          },
          sourceName = "eslint",
          parseJson = {
            errorsRoot = "[0].messages",
            line = "line",
            column = "column",
            endLine = "endLine",
            endColumn = "endColumn",
            message = "[eslint] ${message} [${ruleId}]",
            security = "severity"
          },
          securities = {
            [2] = "error",
            [1] = "warning"
          }
        },
      },
      filetypes = {
        javascript = "eslint",
        typescript = "eslint"
      }
    }
  }
