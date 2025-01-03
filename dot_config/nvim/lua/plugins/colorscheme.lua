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

  {
    "sainnhe/sonokai",
    lazy = false,
    config = function()
      -- Optionally configure and load the colorscheme
      -- directly inside the plugin declaration.
      vim.g.sonokai_enable_italic = true
      -- vim.cmd.colorscheme("sonokai")
    end,
  },
  {
    "navarasu/onedark.nvim",
    -- opts = {
    --   style = "cool",
    -- },
  },
  {
    "EdenEast/nightfox.nvim",
    lazy = false,
    config = function()
      require("nightfox").setup({})
      vim.cmd([[colorscheme nightfox]])
    end,
  },
  -- {
  --   "LazyVim/LazyVim",
  --   opts = {
  --     colorscheme = "nightfox",
  --   },
  -- },
}
