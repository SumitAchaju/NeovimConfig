return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    opts = {
      size = function(term)
        if term.direction == "horizontal" then
          return 15 -- Adjust for horizontal split height
        elseif term.direction == "vertical" then
          return 50 -- Adjust for vertical split width
        end
      end,
      open_mapping = [[<C-\>]], -- Shortcut to open/close terminal
      direction = "horizontal", -- Change to "vertical" or "float" if preferred
      shade_terminals = true,
      shading_factor = 2,
      start_in_insert = true,
      persist_size = true,
      insert_mappings = true,
      terminal_mappings = true,
      close_on_exit = true,
      shell = vim.o.shell,
    },
  },
}
