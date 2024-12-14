-- return {
--   {
--     "LazyVim/LazyVim",
--     opts = {
--       colorscheme = "dracula_pro",
--     },
--   },
--   -- This is managed by chezmoi. Its stored encrypted in this repo and placed in ~/.local/share/nvim/lazy/dracula_pro when `chezmoi apply` is run
--   {
--     "dracula_pro",
--   },
-- }
return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("tokyonight").setup({
      style = "night",
    })
    vim.cmd([[colorscheme tokyonight]])
  end,
}
