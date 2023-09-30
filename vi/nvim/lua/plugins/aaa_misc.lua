return {
  { "alexghergh/nvim-tmux-navigation" },
  { "tpope/vim-commentary" },
  { "tpope/vim-rsi" },
  { --show git blame
    "f-person/git-blame.nvim",
    event = "BufRead",
    config = function()
      vim.cmd("highlight default link gitblame SpecialComment")
      vim.g.gitblame_enabled = 0
    end,
  },
  -- Kitty keywords
  { "fladson/vim-kitty" },
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
