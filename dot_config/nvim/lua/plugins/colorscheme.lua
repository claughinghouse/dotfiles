--  return {
--    {
--      "LazyVim/LazyVim",
--      opts = {
--        colorscheme = "torte",
--      }
--    }
-- }

return {
  -- "folke/tokyonight.nvim",
  -- lazy = false,
  -- priority = 1000,
  -- config = function()
  --   require("tokyonight").setup({
  --     -- style = "night",
  --   })
  -- vim.cmd([[colorscheme tokyonight]])
  -- end,

  { "catppuccin/nvim", name = "catppuccin", lazy = false },
  vim.cmd([[colorscheme catppuccin]]),
}
