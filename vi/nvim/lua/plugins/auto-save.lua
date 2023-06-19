return {
  "Pocco81/auto-save.nvim",
  event = "VeryLazy",
  config = function()
    local conf = require("auto-save")
    conf.setup({
      execution_message = {},
    })
  end,
}
