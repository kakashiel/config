return {
  { "alexghergh/nvim-tmux-navigation" },
  { "tpope/vim-commentary" },
  { --show git blame
    "f-person/git-blame.nvim",
    event = "BufRead",
    config = function()
      vim.cmd("highlight default link gitblame SpecialComment")
      vim.g.gitblame_enabled = 0
    end,
  },
  -- Auto change color with mac os preference
  { "f-person/auto-dark-mode.nvim" },
  -- Kitty keywords
  { "fladson/vim-kitty" },
  {
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
  },
  -- COLORSCHEME
  { "EdenEast/nightfox.nvim", event = "VeryLazy" },
  { "folke/tokyonight.nvim", event = "VeryLazy" },
  { "andersevenrud/nordic.nvim", event = "VeryLazy" },
  { "shaunsingh/nord.nvim", event = "VeryLazy" },
  { "NTBBloodbath/doom-nvim", event = "VeryLazy" },
  { "dracula/vim", event = "VeryLazy" },
  { "Mofiqul/dracula.nvim", event = "VeryLazy" },
  { "mangeshrex/uwu.vim", event = "VeryLazy" },
  { "tiagovla/tokyodark.nvim", event = "VeryLazy" },
  { "luisiacc/gruvbox-baby", event = "VeryLazy" },
  { "sainnhe/sonokai", event = "VeryLazy" },
  { "ishan9299/nvim-solarized-lua", event = "VeryLazy" },
}
