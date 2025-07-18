return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
    plugins = { spelling = true },
    -- You can predefine groups here or in config.keymaps
  },
  config = function(_, opts)
    local wk = require("which-key")
    wk.setup(opts)

  end,
}
