return {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPre", "BufNewFile" },
  -- build = ":TSUpdate",
  build = function()
    require("nvim-treesitter.install").update({ with_sync = true })
  end,
  dependencies = {
    { "windwp/nvim-ts-autotag" },
    {
      "JoosepAlviste/nvim-ts-context-commentstring",
      opts = {
        custom_calculation = function(_, language_tree)
          if vim.bo.filetype == "blade" and language_tree._lang ~= "javascript" and language_tree._lang ~= "php" then
            return "{{-- %s --}}"
          end
        end,
      },
    },
    { "nvim-treesitter/nvim-treesitter-textobjects" },
  },
  config = function()
    -- import nvim-treesitter plugin
    local treesitter = require("nvim-treesitter.configs")

    -- configure treesitter
    treesitter.setup({ -- enable syntax highlighting
      highlight = {
        enable = true,
      },
      auto_install = true,
      sync_install = true,
      -- enable indentation
      indent = { enable = true },
      -- enable autotagging (w/ nvim-ts-autotag plugin)
      autotag = {
        enable = true,
      },
      ignore_install = {},
      modules = {},
      -- ensure these language parsers are installed
      ensure_installed = {
        "astro",
        "bash",
        "blade",
        "css",
        "gitignore",
        "html",
        "ini",
        "javascript",
        "jsdoc",
        "jq",
        "lua",
        "markdown",
        "markdown_inline",
        "php",
        -- "php_only",
        -- "phpdoc",
        "powershell",
        "query",
        "regex",
        "tmux",
        "yaml",
      },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<C-space>",
          node_incremental = "<C-space>",
          scope_incremental = false,
          node_decremental = "<bs>",
        },
        -- MDX
        vim.filetype.add({
          extension = {
            mdx = "mdx",
          },
        }),
        -- Livewire Volt
        -- vim.filetype.add({
        --   pattern = {
        --     [".*%.blade%.php"] = "blade",
        --   },
        -- }),
        vim.treesitter.language.register("markdown", "mdx"),
      },
    })

    -- local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
    -- parser_config.blade = {
    --   install_info = {
    --     url = "https://github.com/EmranMR/tree-sitter-blade",
    --     files = { "src/parser.c" },
    --     branch = "main",
    --   },
    --   filetype = "blade",
    -- }
  end,
}
