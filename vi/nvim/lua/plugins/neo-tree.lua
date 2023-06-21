return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = { close_if_last_window = true },
  keys = {
    { "<leader>n", "<cmd>Neotree source=filesystem reveal=true<cr>", desc = "Project" },
  },
}
