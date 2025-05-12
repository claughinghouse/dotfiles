return {
  {
    "williamboman/mason.nvim",
    version = "^1.0.0", -- https://github.com/LazyVim/LazyVim/issues/6039
    lazy = false,
    config = function()
      require("mason").setup()
    end,
  },
  {
    "mason-org/mason-lspconfig.nvim",
    version = "^1.0.0", -- https://github.com/mason-org/mason-lspconfig.nvim/issues/545
    lazy = false,
    config = function()
      require("mason-lspconfig").setup({
        opts = {},
        automatic_enable = true,
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      local capabilities = require("blink.cmp").get_lsp_capabilities()
      local lspconfig = require("lspconfig")
      lspconfig.astro.setup({ capabilities = capabilities })
      lspconfig.biome.setup({ capabilities = capabilities })
      lspconfig.cssls.setup({ capabilities = capabilities })
      lspconfig.tailwindcss.setup({ capabilities = capabilities })
      lspconfig.ts_ls.setup({ capabilities = capabilities })
      lspconfig.html.setup({ capabilities = capabilities })
      lspconfig.lua_ls.setup({ capabilities = capabilities })
      lspconfig.laravel_ls.setup({ capabilities = capabilities })
      lspconfig.intelephense.setup({
        commands = {
          IntelephenseIndex = {
            function()
              vim.lsp.buf.execute_command({ command = "intelephense.index.workspace" })
            end,
          },
        },
        capabilities = capabilities,
      })
    end,
  },
}
