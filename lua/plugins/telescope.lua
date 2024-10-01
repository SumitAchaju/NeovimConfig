return {
  "nvim-telescope/telescope.nvim",
  opts = function(_, opts)
    local telescope = require("telescope")

    -- Customize the options for ignoring specific files/folders
    opts.defaults = vim.tbl_deep_extend("force", opts.defaults or {}, {
      file_ignore_patterns = { "venv/", "%.pyc", "__pycache__", "node_modules" },
    })

    telescope.setup(opts)
  end,
}
