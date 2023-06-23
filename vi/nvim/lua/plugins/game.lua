return {
  { -- TRY IT !
    "eandrju/cellular-automaton.nvim",
    keys = {
      { "<leader>G", desc = "Game" },
      { "<leader>Gf", "<cmd>CellularAutomaton make_it_rain<cr>", desc = "Fuck my life" },
    },
  },
  { -- LEETCODE
    "Dhanus3133/LeetBuddy.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim",
    },
    config = function()
      require("leetbuddy").setup({})
    end,
    keys = {
      { "<leader>GL", desc = "Leetcode" },
      { "<leader>GLq", "<cmd>LBQuestions<cr>", desc = "List Questions" },
      { "<leader>GLl", "<cmd>LBQuestion<cr>", desc = "View Question" },
      { "<leader>GLr", "<cmd>LBReset<cr>", desc = "Reset Code" },
      { "<leader>GLt", "<cmd>LBTest<cr>", desc = "Run Code" },
      { "<leader>GLs", "<cmd>LBSubmit<cr>", desc = "Submit Code" },
    },
  },
  {
    "ThePrimeagen/vim-be-good",
    keys = {
      { "<leader>GG", "<cmd>VimBeGood<cr>", desc = "Vim be good" },
    },
  },
  {
    "seandewar/nvimesweeper",
    keys = {
      { "<leader>Gs", "<cmd>Nvimesweeper<cr>", desc = "Sweeper game" },
    },
  },
  {
    "alec-gibson/nvim-tetris",
    keys = {
      { "<leader>Gt", "<cmd>Tetris<cr>", desc = "Tetris game" },
    },
  },
  {
    "jim-fx/sudoku.nvim",
    cmd = "Sudoku",
    keys = {
      { "<leader>GS", "<cmd>Sudoku<cr>", desc = "Sudoku game" },
    },
    config = function()
      require("sudoku").setup({
        -- configuration ...
      })
    end,
  },
}
