return {
  {
    "nvim-treesitter/nvim-treesitter-context",
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    config = function()
      local tsc = require("treesitter-context")
      tsc.setup({
        enable = false,
        max_lines = 1,
        trim_scope = "inner",
      })
    end,
  },
}
