local ch
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps hereby
local keymap = vim.keymap.set
local normalAndVisual = { "n", "v" }

vim.keymap.set("n", "<leader-o>", "<leader>ff")

-- WORK only in the keymap. Keep it here
if not vim.g.vscode then
  local nvim_tmux_nav = require("nvim-tmux-navigation")
  vim.keymap.set("n", "<C-h>", nvim_tmux_nav.NvimTmuxNavigateLeft)
  vim.keymap.set("n", "<C-j>", nvim_tmux_nav.NvimTmuxNavigateDown)
  vim.keymap.set("n", "<C-k>", nvim_tmux_nav.NvimTmuxNavigateUp)
  vim.keymap.set("n", "<C-l>", nvim_tmux_nav.NvimTmuxNavigateRight)
  vim.keymap.set("n", "<C-\\>", nvim_tmux_nav.NvimTmuxNavigateLastActive)
  vim.keymap.set("n", "<C-Space>", nvim_tmux_nav.NvimTmuxNavigateNext)
end

keymap({ "n", "v" }, "<C-s>", ":wa<CR>", { silent = true, noremap = true, desc = "Save all" })
keymap({ "n", "v" }, "<leader>/", "gcc", { silent = true, remap = true, desc = "Comment" })
keymap("x", "<leader>/", "gc", { silent = true, remap = true, desc = "Comment" })
-- keymap({ "n", "v" }, "<leader>/", ":Commentary<CR>")

-- vim.keymap.set(normalAndVisual, "<Leader>t", { desc = "ChatGPT" })
vim.keymap.set(normalAndVisual, "<Leader>tk", "<cmd>:ChatGPT<cr>")
vim.keymap.set(normalAndVisual, "<Leader>tj", "<cmd>:ChatGPTActAs<cr>")
vim.keymap.set(normalAndVisual, "<Leader>tt", "<cmd>:ChatGPTEditWithInstructions<cr>")
