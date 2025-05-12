return {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPre", "BufNewFile" },
  build = ":TSUpdate",
  dependencies = {
    { "windwp/nvim-ts-autotag" },
    {
      "JoosepAlviste/nvim-ts-context-commentstring",
      opts = {
        languages = {
          php_only = "// %s",
          php = "// %s",
          -- blade = '{{-- %s --}}',
          -- blade = {
          --   __default = '{{-- %s --}}',
          --   html = '{{-- %s --}}',
          --   blade = '{{-- %s --}}',
          --   php = '// %s',
          --   php_only = '// %s',
          -- }
        },
        custom_calculation = function(node, language_tree)
          -- print(language_tree:lang())
          -- print(node:type())
          print(vim.bo.filetype)
          print(language_tree._lang)
          print("----")
          if vim.bo.filetype == "blade" then
            if language_tree._lang == "html" then
              return "{{-- %s --}}"
            else
              return "// %s"
            end
          end
          -- if vim.bo.filetype == 'blade' and language_tree._lang ~= 'javascript' and language_tree._lang ~= 'php' then
          --   return '{{-- %s --}}'
          -- end
        end,
      },
    },
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
        "php_only",
        "phpdoc",
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
        vim.treesitter.language.register("markdown", "mdx"),
      },
    })
  end,
}
