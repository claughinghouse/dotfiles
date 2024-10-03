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
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

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
			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},
	-- {
	--   "nvim-telescope/telescope-ui-select.nvim",
	--   config = function()
	--     require("telescope").setup({
	--       extensions = {
	--         ["ui-select"] = {
	--           require("telescope.themes").get_dropdown {
	--           }
	--         }
	--       }
	--     })
	--       require("telescope").load_extension("ui-select")
	--   end
	-- },
}
