return {
  "lukas-reineke/indent-blankline.nvim",
  main = "ibl", -- Required for LazyVim
  opts = {
    indent = {
      char = " ", -- hide all regular indent lines
    },
    scope = {
      enabled = true, -- enable current scope indent lines
      char = "│", -- show this for current indent only
      show_start = false,
      show_end = false,
      highlight = { "IndentBlanklineContextChar" },
    },
  },
}
