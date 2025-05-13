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

      local get_intelephense_license = function()
        local f = assert(io.open(os.getenv("HOME") .. "/.config/intelephense/license.txt", "rb"))
        local content = f:read("*a")
        f:close()
        return string.gsub(content, "%s+", "")
      end

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
        init_options = {
          licenceKey = get_intelephense_license(),
        },
        settings = {
          intelephense = {
            diagnostics = {
              enable = true,
              run = "onType",
            },
            environment = {
              phpVersion = "8.2",
            },
            files = {
              maxSize = 5000000,
            },
            completion = {
              insertUseDeclaration = true, -- Auto-import
              fullyQualifyGlobalConstantsAndFunctions = true,
              triggerParameterHints = true,
              maxItems = 100,
            },
            format = {
              enable = true,
            },
            references = {
              exclude = {},
            },
          },
        },
      })
    end,
  },
}
