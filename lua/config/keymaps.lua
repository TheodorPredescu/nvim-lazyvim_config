-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("n", "J", "mzJ`z")

vim.keymap.set("x", "<leader>P", '"_dP', { desc = "Paste without overwriting clipboard" })

vim.keymap.set("n", "<leader>p", '"+p', { desc = "Paste from pc-clipboard" })
vim.keymap.set("v", "<leader>p", '"+p', { desc = "Paste from pc-clipboard" })

vim.keymap.set("n", "<leader>y", '"+y', { desc = "Save to pc-clipboard" })
vim.keymap.set("v", "<leader>y", '"+y', { desc = "Save to pc-clipboard" })
vim.keymap.set("n", "<leader>y", '"+Y', { desc = "Save to pc-clipboard" })

vim.keymap.set("n", "<leader>d", '"_d')
vim.keymap.set("v", "<leader>d", '"_d')
-- vim.keymap.set("n", "<leader>n", "m`o<Esc>``", { desc = "Adds a blank line below" })
-- vim.keymap.set("n", "<leader>N", "m`O<Esc>``", { desc = "Adds a blank line before" })
