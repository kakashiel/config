local Util = require("lazyvim.util")

return {
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      -- add a keymap to browse plugin files
      -- stylua: ignore
      { "<leader>F", Util.telescope("live_grep"), desc = "Grep (root dir)" },
      {
        "<leader>fp",
        function()
          require("telescope.builtin").find_files({ cwd = require("lazy.core.config").options.root })
        end,
        desc = "Find Plugin File",
      },
    },
    -- change some options
    opts = {
      defaults = {
        layout_strategy = "horizontal",
        layout_config = { prompt_position = "top" },
        sorting_strategy = "ascending",
        winblend = 0,
      },
      pickers = {
        buffers = {
          -- sort_lastused = true,
          -- ignore_current_buffer = true,
          sort_mru = true,
        },
      },
    },
  },
  -- Add telescope-fzf-native
  -- https://www.lazyvim.org/configuration/recipes#add-telescope-fzf-native
  "telescope.nvim",
  dependencies = {
    "nvim-telescope/telescope-fzf-native.nvim",
    build = "make",
    config = function()
      require("telescope").load_extension("fzf")
    end,
  },
}
