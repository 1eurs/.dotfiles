-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
local map = vim.keymap.set
map("n", "<leader>tt", ":Fterm<CR>", { desc = "Open terminal in new tab" })
map("n", "<leader>tr", ":Sterm<CR>", { desc = "Open terminal in horizontal split" })
-- map("n", "<leader>tv", ":Vterm<CR>", { desc = "Open terminal in vertical split" })
-- map("n", "<leader>tT", ":FTerm<CR>", { desc = "Open persistent terminal in new tab" })
-- map("n", "<leader>tS", ":STerm<CR>", { desc = "Open persistent terminal in horizontal split" })
-- map("n", "<leader>tV", ":VTerm<CR>", { desc = "Open persistent terminal in vertical split" })
