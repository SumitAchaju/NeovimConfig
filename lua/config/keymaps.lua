-- Keymaps are automatically loa``ded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("i", "<C-n>", function()
  vim.api.nvim_command("normal! o")
end)
