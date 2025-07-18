local normalAndVisual = { "n", "v" }
return {
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    build = ":Copilot auth",
    event = "BufReadPost",
    opts = {
      suggestion = {
        enabled = not vim.g.ai_cmp,
        auto_trigger = true,
        hide_during_completion = vim.g.ai_cmp,
        keymap = {
          accept = false, -- handled by nvim-cmp / blink.cmp
          next = "<M-]>",
          prev = "<M-[>",
        },
      },
      panel = { enabled = false },
      filetypes = {
        markdown = true,
        help = true,
      },
    },
  },
  { "giuxtaposition/blink-cmp-copilot" },
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    dependencies = {
      { "zbirenbaum/copilot.lua" },
      { "nvim-lua/plenary.nvim", branch = "master" },
    },
    build = "make tiktoken",
    opts = {
      -- your CopilotChat config
    },
    config = function(_, opts)
      require("CopilotChat").setup(opts)

      -- Use BufEnter since FileType isn't always set correctly
      vim.api.nvim_create_autocmd("BufEnter", {
        pattern = "*",
        callback = function()
          local ft = vim.bo.filetype
          if ft == "copilot-chat" or vim.api.nvim_buf_get_name(0):match("CopilotChat") then
            -- Remove both normal and insert mappings for <C-l>
            pcall(vim.keymap.del, "n", "<C-l>", { buffer = true })
            pcall(vim.keymap.del, "i", "<C-l>", { buffer = true })
          end
        end,
      })
    end,
  },
  {
    "olimorris/codecompanion.nvim",
    opts = {},
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
  },
}
