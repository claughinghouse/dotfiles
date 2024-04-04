--[[ return {
  { "craftzdog/solarized-osaka.nvim" },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "solarized-osaka",
    },
  },
}
]]
-- return {
-- { "kepano/flexoki-neovim", name = "flexoki" },
-- }
return {
  { "catppuccin/nvim", name = "catppuccin-mocha", priority = 1000 },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin-mocha",
    },
  },
}
