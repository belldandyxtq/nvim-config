-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })
vim.api.nvim_set_keymap("i", "<C-c>", "<Esc>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("t", "<C-c>", "<Esc>", { noremap = true, silent = true })
-- Map Cmd + C to copy to clipboard without deleting
vim.api.nvim_set_keymap("v", "<D-c>", '"+y', { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "<D-c>", '<Esc>"+yi', { noremap = true, silent = true })

vim.keymap.set("n", "tt", "<cmd>belowright new<CR><cmd>terminal<CR>", { desc = "Telescope help tags" })
-- vim.keymap.set("n", "tt", "<cmd>terminal<CR>", { desc = "Telescope help tags" })
