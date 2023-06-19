return {
  { "Pocco81/AutoSave.nvim" },
  { "christoomey/vim-tmux-navigator" },
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
  -- COLORSCHEME
  { "EdenEast/nightfox.nvim" },
  { "folke/tokyonight.nvim" },
  { "andersevenrud/nordic.nvim" },
  { "shaunsingh/nord.nvim" },
  { "NTBBloodbath/doom-nvim" },
  { "dracula/vim" },
  { "Mofiqul/dracula.nvim" },
  { "mangeshrex/uwu.vim" },
  { "tiagovla/tokyodark.nvim" },
  { "luisiacc/gruvbox-baby" },
  { "sainnhe/sonokai" },
  { "ishan9299/nvim-solarized-lua" },
}
