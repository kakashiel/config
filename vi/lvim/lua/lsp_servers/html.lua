local lsp_config = require("lspconfig")

--Enable (broadcasting) snippet capability for completion
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

lsp_config.html.setup {
  capabilities = capabilities,
  init_options = {
    configurationSection = { "html", "css", "javascript" },
    embeddedLanguages = {
      css = true,
      javascript = true
    },
    provideFormatter = true
  }
}
