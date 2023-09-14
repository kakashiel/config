local normalAndVisual = { "n", "v" }
return {
  "jackMort/ChatGPT.nvim",
  event = "VeryLazy",
  config = function()
    require("chatgpt").setup()
  end,
  -- See in keymap file
  -- keys = {
  --   { "<leader>t", desc = "ChatGPT", mode = normalAndVisual },
  --   { "<leader>tk", "<cmd>:ChatGPT<cr>", desc = "ChatGPT", mode = normalAndVisual },
  --   { "<leader>tj", "<cmd>:ChatGPTActAs<cr>", desc = "ChatGPTActAs", mode = normalAndVisual },
  --   {
  --     "<leader>tt",
  --     "<cmd>:ChatGPTEditWithInstructions<cr>",
  --     desc = "ChatGPTEditWithInstructions",
  --     mode = normalAndVisual,
  --   },
  -- },
  dependencies = {
    "MunifTanjim/nui.nvim",
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim",
  },
}
