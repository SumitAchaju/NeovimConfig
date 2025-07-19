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
      open_mapping = nil,
      direction = "float", -- Change to "vertical" or "float" if preferred
      shade_terminals = true,
      shading_factor = 2,
      start_in_insert = true,
      persist_size = true,
      insert_mappings = true,
      terminal_mappings = true,
      close_on_exit = true,
      shell = vim.o.shell,
      float_opts = {
        border = "curved",
        winblend = 0,
      },
    },
    config = function(_, opts)
      require("toggleterm").setup(opts)
      local Terminal = require("toggleterm.terminal").Terminal
      local project_dir = vim.fn.getcwd()

      local function file_exists(path)
        return vim.loop.fs_stat(path) ~= nil
      end

      local cmd = "bash ~/.config/nvim/term.sh"

      if file_exists(project_dir .. "/term.sh") then
        cmd = "bash " .. project_dir .. "/term.sh"
      end

      -- Define custom terminal commands
      local tmux = Terminal:new({
        cmd = cmd,

        hidden = true,
      })
      function _TMUX_TOGGLE()
        tmux:toggle()
      end
    end,
  },
}
