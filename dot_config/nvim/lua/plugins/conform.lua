-- return {}
return {
  {
    "stevearc/conform.nvim",
    optional = true,
    opts = {
      -- for language support
      -- @see https://biomejs.dev/internals/language-support/
      formatters_by_ft = {
        ["javascript"] = { "biome" },
        ["javascriptreact"] = { "biome" },
        ["typescript"] = { "biome" },
        ["typescriptreact"] = { "biome" },
        ["json"] = { "biome" },
        ["jsonc"] = { "biome" },
        ["lua"] = { "stylua" },
        -- ["astro"] = { "prettierd" },
        -- ["php"] = { "php" },
        ["php"] = { "pint", "php_cs_fixer", stop_after_first = true },
        ["blade"] = { "blade-formatter" },
      },
    },
  },
}
