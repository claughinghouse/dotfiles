return {
  {
    "williamboman/mason.nvim",
    lazy = false,
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    config = function()
      require("mason-lspconfig").setup({
        opts = { auto_install = true },
        ensure_installed = {
          "ansiblels",
          "astro",
          "lua_ls",
          "biome",
          "bashls",
          "cssls",
          "dockerls",
          -- "helm_ls",
          "html",
          "marksman",
          "tflint",
          "terraformls",
          "tailwindcss",
          "yamlls",
          "ts_ls",
        },
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      local capabilities = require('blink.cmp').get_lsp_capabilities()
      local lspconfig = require("lspconfig")
      lspconfig.ansiblels.setup({ capabilities = capabilities })
      lspconfig.astro.setup({ capabilities = capabilities })
      lspconfig.biome.setup({ capabilities = capabilities })
      lspconfig.bashls.setup({ capabilities = capabilities })
      lspconfig.cssls.setup({ capabilities = capabilities })
      lspconfig.dockerls.setup({ capabilities = capabilities })
      -- lspconfig.helm_ls.setup({})
      lspconfig.marksman.setup({ capabilities = capabilities })
      lspconfig.tflint.setup({ capabilities = capabilities })
      lspconfig.terraformls.setup({ capabilities = capabilities })
      lspconfig.tailwindcss.setup({ capabilities = capabilities })
      lspconfig.yamlls.setup({ capabilities = capabilities })
      lspconfig.ts_ls.setup({ capabilities = capabilities })
      lspconfig.html.setup({ capabilities = capabilities })
      lspconfig.lua_ls.setup({ capabilities = capabilities })
    end,
  }
}
