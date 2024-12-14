return {
	{
		"nvimtools/none-ls.nvim",
		config = function()
			local null_ls = require("null-ls")
			null_ls.setup({
				sources = {
					null_ls.builtins.code_actions.gitsigns,
					-- null_ls.builtins.completion.spell,
					null_ls.builtins.diagnostics.actionlint,
					-- null_ls.builtins.diagnostics.ansiblelint,
					-- null_ls.builtins.diagnostics.codespell,
					-- null_ls.builtins.diagnostics.dotenv_linter,
					-- null_ls.builtins.diagnostics.markdownlint,
					-- null_ls.builtins.diagnostics.terraform_validate,
					-- null_ls.builtins.diagnostics.terragrunt_validate,
					-- null_ls.builtins.diagnostics.tfsec,
					-- null_ls.builtins.formatting.hclfmt,
					-- null_ls.builtins.formatting.markdownlint,
					null_ls.builtins.formatting.shfmt,
					-- null_ls.builtins.formatting.terraform_fmt,
					-- null_ls.builtins.formatting.yamlfmt,
					null_ls.builtins.formatting.stylua,
					null_ls.builtins.formatting.biome,
				},
			})

			vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
		end,
	},
}
