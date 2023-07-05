return {
  "folke/zen-mode.nvim",
  keys = {
    { "<leader>z", "<cmd>ZenMode<cr>", desc = "Zen" },
  },
  otps = {
    window = {
      backdrop = 0.95, -- shade the backdrop of the Zen window. Set to 1 to keep the same as Normal
      width = 150, -- width of the Zen window
      height = 1, -- height of the Zen window
    },
    plugins = {
      gitsigns = { enabled = true }, -- disables git signs
      tmux = { enabled = true },
      kitty = {
        enabled = true,
        font = "+4", -- font size increment
      },
    },
  },
}
