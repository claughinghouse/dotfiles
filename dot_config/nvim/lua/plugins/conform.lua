return {
  {
    "stevearc/conform.nvim",
    optional = true,
    opts = {
      -- for language support
      -- @see https://oxc.rs/docs/guide/usage/linter.html
      formatters_by_ft = {
        ["javascript"] = { "oxfmt" },
        ["javascriptreact"] = { "oxfmt" },
        ["typescript"] = { "oxfmt" },
        ["typescriptreact"] = { "oxfmt" },
        ["json"] = { "oxfmt" },
        ["jsonc"] = { "oxfmt" },
        ["lua"] = { "stylua" },
        -- ["astro"] = { "prettierd" },
        -- ["php"] = { "pint", "php_cs_fixer", stop_after_first = true },
        -- ["blade"] = { "blade-formatter" },
      },
    },
  },
}
