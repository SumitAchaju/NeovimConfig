-- Keymaps are automatically loa``ded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.api.nvim_set_keymap("n", "<C-o>", ":RunScript<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-i>", ":bdelete!<CR>", { noremap = true, silent = true })

-- Key mappings for toggling terminals
vim.keymap.set("n", "<C-j>", "<cmd>lua _TMUX_TOGGLE()<CR>", { noremap = true, silent = true })
vim.keymap.set("t", "<C-j>", "<cmd>close<CR>", { noremap = true, silent = true })
