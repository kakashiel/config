-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps hereby
vim.keymap.set({ "n", "v" }, "<leader>/", "gcc", { noremap = true, desc = "Comment" })

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

vim.keymap.set({ "n", "v" }, "<C-s>", ":wa<CR>")
vim.keymap.set({ "n", "v" }, "<leader>/", ":Commentary<CR>")
