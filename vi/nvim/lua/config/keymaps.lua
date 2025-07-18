local wk = require("which-key")
local map = vim.keymap.set
local n, v = "n", "v"
local nv = { "n", "v" }

-- ====================
-- Default keymaps for LazyVim
-- ====================
-- https://www.lazyvim.org/configuration/general#keymaps

-- ====================
-- 🗂️ Which‑key groups (NEW SPEC)
-- ====================
wk.add({
  -- Main leader groups with new spec format
  {
    mode = nv,
    { "<leader><tab>", group = "tabs" },
    { "<leader>b", group = "buffer" },
    { "<leader>c", group = "code" },
    { "<leader>f", group = "file/find" },
    { "<leader>g", group = "git" },
    { "<leader>gh", group = "hunks" },
    { "<leader>n", "<cmd>Neotree source=filesystem reveal=true<cr>", desc = "Project (Neotree)" },
    { "<leader>N", "<cmd>Neotree close<cr>", desc = "Close Neotree" },
    { "<leader>o", LazyVim.pick("files"), desc = "Find Files (Root Dir)" },
    { "<leader>q", group = "quit/session" },
    { "<leader>r", group = "reformat/rename" },
    { "<leader>rf", "<leader>cf", desc = "Format File" },
    { "<leader>rn", "<leader>cr", desc = "Rename" },
    { "<leader>s", group = "search" },
    { "<leader>a", group = "AI/Copilot" },
    { "<leader>at", "<cmd>CopilotChat<cr>", desc = "Copilot" },
    {
      "<leader>ab",
      function()
        vim.cmd("CopilotChat --context buffer")
      end,
      desc = "Copilot (Buffer Context)",
    },
    { "<leader>aa", "<cmd>CopilotChatAgents<cr>", desc = "Select agents" },
    { "<leader>am", "<cmd>CopilotChatModels<cr>", desc = "Select models" },
    { "<leader>ae", "<cmd>CopilotChatExplain<cr>", desc = "Copilot Explain" },
    { "<leader>af", "<cmd>CopilotChatFix<cr>", desc = "Copilot Fix" },
    { "<leader>ar", "<cmd>CopilotChatReview<cr>", desc = "Copilot Review" },
    { "<leader>as", "<cmd>CopilotChatSummarize<cr>", desc = "Copilot Summarize" },
    { "<leader>w", group = "windows" },
    { "<leader>x", group = "diagnostics/quickfix" },
    { "<leader>z", "<cmd>ZenMode<cr>", desc = "Zen Mode" },
    { "[", group = "prev" },
    { "]", group = "next" },
    { "g", group = "goto" },
    { "gz", group = "surround" },
    -- Command for macos with kytty
    { "<Esc>o", LazyVim.pick("files"), desc = "Find Files (Root Dir)" },
    { "<Esc>e", LazyVim.pick("oldfiles", { cwd = vim.uv.cwd() }), desc = "Recent (cwd)" },
    { "<Esc>f", LazyVim.pick("live_grep"), desc = "Grep (Root Dir)" },
    { "<Esc>z", "<cmd>ZenMode<cr>", desc = "ZenMode" },
  },
})

-- Games group (normal mode only) with corrected key mappings
wk.add({
  { "<leader>G", group = "games", mode = "n" },
  { "<leader>GG", "<cmd>VimBeGood<cr>", desc = "Vim be good", mode = "n" },
  { "<leader>GS", "<cmd>Sudoku<cr>", desc = "Sudoku", mode = "n" },
  { "<leader>Gc", "<cmd>CellularAutomaton game_of_life<cr>", desc = "Game of life", mode = "n" },
  { "<leader>Gf", "<cmd>CellularAutomaton make_it_rain<cr>", desc = "Crazy rain", mode = "n" },
  { "<leader>Gs", "<cmd>Nvimesweeper<cr>", desc = "Minesweeper", mode = "n" },
  { "<leader>Gt", "<cmd>Tetris<cr>", desc = "Tetris", mode = "n" },
})

-- ================
-- 🛠️ Mappings
-- ================
-- Save all buffers
map(nv, "<C-s>", ":wa<CR>", { silent = true, noremap = true, desc = "Save all" })

-- Commenting (using comment.nvim or tpope-comment)
-- Normal and visual: toggle comment line/block
map(nv, "<leader>/", "gcc", { silent = true, remap = true, desc = "Toggle comment" })
-- Visual mode for motion selections
map("x", "<leader>/", "gc", { silent = true, remap = true, desc = "Toggle comment" })


-- ====================
-- Noice command line popup navigation
-- ====================
if pcall(require, "noice") then
  require("noice").setup({
    cmdline = {
      view = "cmdline_popup",
      mappings = {
        ["<Down>"] = "next",
        ["<Up>"] = "prev",
        ["<C-n>"] = "next",
        ["<C-p>"] = "prev",
      },
    },
  })
end


-- =========================
-- 🔁 Navigation & Utilities
-- =========================
-- tmux-navigation (if not in vscode)
if not vim.g.vscode then
  local nav = require("nvim-tmux-navigation")
  local opts = { desc = "Navigate to tmux split", noremap = true, silent = true }
  map(n, "<C-h>", nav.NvimTmuxNavigateLeft, opts)
  map(n, "<C-j>", nav.NvimTmuxNavigateDown, opts)
  map(n, "<C-k>", nav.NvimTmuxNavigateUp, opts)
  map(n, "<C-l>", nav.NvimTmuxNavigateRight, opts)
  map(n, "<C-\\>", nav.NvimTmuxNavigateLastActive, opts)
  map(n, "<C-Space>", nav.NvimTmuxNavigateNext, opts)
end
