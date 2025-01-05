return {
 {
    "gagbo/circadian.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require('circadian').setup({
        -- Latitude: Defaults to Paris' latitude
        lat = 39.0,
        -- Longitude: Defaults to Paris' longitude
        lon = -77.0,
        -- Day theme: the background is optional, but useful for themes that
        -- control light/dark variants with it. Defaults to nil everywhere
        -- (will not change a thing when Sun rises)
        day = { background = "light", colorscheme = "catppuccin-latte" },
        -- Night theme: the background is optional, but useful for themes that
        -- control light/dark variants with it. Defaults to nil everywhere
        -- (will not change a thing when Sun sets)
        night = { background = "dark", colorscheme = "catppuccin-mocha" },

      })
    end
  },
}
