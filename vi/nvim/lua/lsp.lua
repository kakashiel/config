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

