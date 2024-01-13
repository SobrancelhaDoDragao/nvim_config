return {
  {
    "catppuccin/nvim",
    config = function()
      require("catppuccin").setup({
        term_colors = true,
        color_overrides = {
          mocha = {
            base = "#161616",
            mantle = "#161616",
            crust = "#161616",
          },
        },
      })
    end,
  },
  {
    "EdenEast/nightfox.nvim",
  },
  {
    "rebelot/kanagawa.nvim",
  },
  {
    "olimorris/onedarkpro.nvim",
  },
  {
    "rose-pine/neovim",
  },
  {
    "ellisonleao/gruvbox.nvim",
  },
}
