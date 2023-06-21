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
      { "<leader>Gq", "<cmd>LBQuestions<cr>", desc = "List Questions" },
      { "<leader>Gl", "<cmd>LBQuestion<cr>", desc = "View Question" },
      { "<leader>Gr", "<cmd>LBReset<cr>", desc = "Reset Code" },
      { "<leader>Gt", "<cmd>LBTest<cr>", desc = "Run Code" },
      { "<leader>Gs", "<cmd>LBSubmit<cr>", desc = "Submit Code" },
    },
  },
  {
    "ThePrimeagen/vim-be-good",
    keys = {
      { "<leader>GG", "<cmd>VimBeGood<cr>", desc = "Vim be good" },
    },
  },
}
