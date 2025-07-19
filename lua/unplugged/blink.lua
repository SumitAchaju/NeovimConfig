return {
  "saghen/blink.cmp",
  opts = {
    keymap = {
      preset = "none", -- Start with no default mappings
      ["<Tab>"] = { "accept", "fallback" },
      ["<S-Tab>"] = { "select_prev", "fallback" },
      ["<C-n>"] = { "select_next", "fallback" },
      ["<C-p>"] = { "select_prev", "fallback" },
      ["<C-y>"] = { "accept", "fallback" },
      ["<C-e>"] = { "cancel", "fallback" },
      ["<C-u>"] = { "scroll_documentation_up", "fallback" },
      ["<C-d>"] = { "scroll_documentation_down", "fallback" },
    },
  },
}
