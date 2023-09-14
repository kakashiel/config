local ch
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps hereby
local keymap = vim.keymap.set
local normalAndVisual = { "n", "v" }
local normal = { "n" }

-- WORK only in the keymap. Keep it here
if not vim.g.vscode then
  local nvim_tmux_nav = require("nvim-tmux-navigation")
  vim.keymap.set(normal, "<C-h>", nvim_tmux_nav.NvimTmuxNavigateLeft)
  vim.keymap.set(normal, "<C-j>", nvim_tmux_nav.NvimTmuxNavigateDown)
  vim.keymap.set(normal, "<C-k>", nvim_tmux_nav.NvimTmuxNavigateUp)
  vim.keymap.set(normal, "<C-l>", nvim_tmux_nav.NvimTmuxNavigateRight)
  vim.keymap.set(normal, "<C-\\>", nvim_tmux_nav.NvimTmuxNavigateLastActive)
  vim.keymap.set(normal, "<C-Space>", nvim_tmux_nav.NvimTmuxNavigateNext)
end

------------------------------------------------------------------------
------------------------------------------------------------------------
-- Intellj Style
------------------------------------------------------------------------
------------------------------------------------------------------------
keymap(normalAndVisual, "<C-s>", ":wa<CR>", { silent = true, noremap = true, desc = "Save all" })

-- Refacto
keymap(normalAndVisual, "<leader>rn", "<leader>cr", { silent = true, remap = true, desc = "Rename" })
keymap(normalAndVisual, "<leader>rf", "<leader>cf", { silent = true, remap = true, desc = "Format file" })

-- Comment
keymap(normalAndVisual, "<leader>/", "gcc", { silent = true, remap = true, desc = "Comment" })
keymap("x", "<leader>/", "gc", { silent = true, remap = true, desc = "Comment" })
keymap(normal, "<leader-o>", "<leader>ff")
-- keymap({ "n", "v" }, "<leader>/", ":Commentary<CR>")

------------------------------------------------------------------------
------------------------------------------------------------------------
--CHAT GPT
------------------------------------------------------------------------
------------------------------------------------------------------------
keymap(normalAndVisual, "<Leader>t", "", { desc = "ChatGPT" })
vim.keymap.set(normalAndVisual, "<Leader>tk", "<cmd>:ChatGPT<cr>")
vim.keymap.set(normalAndVisual, "<Leader>tj", "<cmd>:ChatGPTActAs<cr>")
vim.keymap.set(normalAndVisual, "<Leader>tt", "<cmd>:ChatGPTEditWithInstructions<cr>")
