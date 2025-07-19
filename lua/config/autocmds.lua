-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

local run_script_buf = nil

vim.api.nvim_create_user_command("RunScript", function()
  -- Close the previous terminal if it exists
  if run_script_buf and vim.api.nvim_buf_is_valid(run_script_buf) then
    vim.api.nvim_buf_delete(run_script_buf, { force = true })
  end

  -- Open a new vertical terminal and run the script
  vim.cmd("vsplit")
  vim.cmd("enew") -- create a new buffer
  local buf = vim.api.nvim_get_current_buf()

  -- Save buffer handle
  run_script_buf = buf

  -- Start terminal and run the script
  vim.fn.termopen("bash ./run.sh")
  vim.cmd("startinsert")
end, {})
