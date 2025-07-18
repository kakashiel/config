-- ~/.config/nvim/lua/plugins/games.lua
return {
  {
    "eandrju/cellular-automaton.nvim",
    cmd = { "CellularAutomaton" }, -- Lazy-load when used
  },
  {
    "ThePrimeagen/vim-be-good",
    cmd = { "VimBeGood" },
  },
  {
    "seandewar/nvimesweeper",
    cmd = { "Nvimesweeper" },
  },
  {
    "alec-gibson/nvim-tetris",
    cmd = { "Tetris" },
  },
  {
    "jim-fx/sudoku.nvim",
    cmd = { "Sudoku" },
    config = function()
      require("sudoku").setup({})
    end,
  },
  {
    "seandewar/actually-doom.nvim",
    cmd = { "Doom" },
  },
}
