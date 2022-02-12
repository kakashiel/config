local wk = require("which-key")
wk.register({
  n = {"<cmd>NvimTreeToggle<CR>", "Explorer" },
  N = {"<cmd>NERDTreeToggle<cr>", "Tree toggle" },
  e = {"<cmd>Telescope oldfiles<cr>", "Open recent file" },
  E = {"<cmd>Telescope buffers<cr>", "Open recent buffer" },
  F = {"<cmd>Telescope live_grep<cr>", "Find text" },
  O = {"<cmd>Telescope find_files<cr>", "Open files" },
  ["<space>"] = "which_key_ignore",
  ["1"] = {"<cmd>NvimTreeToggle<CR>", "Explorer" },
  t = {
    name = "Telescope",
    c = {"<cmd>Telescope colorscheme<cr>", "Open colorscheme" },
    t = {"<cmd>Telescope help_tags<cr>", "Open tags" },
    g = {"<cmd>Telescope git_files<cr>", "Open git" },
  },
}, {prefix = "<leader>"})

-- Remap default lunarvim
lvim.builtin.which_key.mappings["e"] = {

  ":Telescope oldfiles<cr>", "Open recent file"
}

