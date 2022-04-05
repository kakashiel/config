SEARCH_IGNORE = ".git/"
SEARCH_IGNORE_TESTS_FILES = "*.spec.ts"
SEARCH_TYPES_FILES = "!*.ts "

local wk = require("which-key")
wk.register({
  e = {"<cmd>Telescope oldfiles<cr>", "Open recent file" },
  E = {"<cmd>Telescope buffers<cr>", "Open recent buffer" },
  ["<space>"] = "which_key_ignore",
  ["1"] = {"<cmd>NvimTreeToggle<CR>", "Explorer" },
  F = {
    name = "Find text",
    a = {"<cmd>Telescope live_grep hidden=true no_ignore=true<cr>", "All" },
    f = {"<cmd>Telescope live_grep hidden=true <cr>", "Normal" },
    c = {
      [[<cmd>Telescope live_grep hidden=true  
        file_ignore_patterns={".git"}  
        <cr>]], "No tests files" },
    g = {"<cmd>Telescope live_grep file_ignore_patterns={".. SEARCH_IGNORE..","..SEARCH_IGNORE_TESTS_FILES..","..SEARCH_TYPES_FILES.. [[}
    <cr>]], "test"}
  },
  g = {
    D = {"<cmd>Gvdiffsplit! <cr>", "Diff 3 way" },
  },
  l = {"<cmd>lua vim.lsp.buf.formatting()<CR>", "Format" },
  n = {"<cmd>NvimTreeToggle<CR>", "Explorer" },
  N = {"<cmd>NERDTreeToggle<cr>", "Tree toggle" },
  O = {
    name = "Open file",
    a = {"<cmd>Telescope find_files hidden=true no_ignore=true<cr>", "Look everywhere" },
    o = {"<cmd>Telescope find_files hidden=true <cr>", "Normal" },
  },
  rn = {"<cmd>lua vim.lsp.buf.rename()<CR>", "Rename" },
  t = {
    name = "Telescope",
    c = {"<cmd>Telescope colorscheme<cr>", "Open colorscheme" },
    t = {"<cmd>Telescope help_tags<cr>", "Open tags" },
    g = {"<cmd>Telescope git_files<cr>", "Open git" },
  },
}, {prefix = "<leader>"})

vim.cmd("nnoremap [d <cmd>lua vim.diagnostic.goto_next()<CR>")
vim.cmd("nnoremap ]d <cmd>lua vim.diagnostic.goto_prev()<CR>")

-- Remap default lunarvim
lvim.builtin.which_key.mappings["e"] = {
  ":Telescope oldfiles<cr>", "Open recent file",
}
lvim.builtin.which_key.mappings["q"] = {
  ":q<cr>", "Quit",
}
lvim.builtin.which_key.mappings["S"]= {
  name = "Session",
  c = { "<cmd>lua require('persistence').load()<cr>", "Restore last session for current dir" },
  l = { "<cmd>lua require('persistence').load({ last = true })<cr>", "Restore last session" },
  Q = { "<cmd>lua require('persistence').stop()<cr>", "Quit without saving session" },
}


