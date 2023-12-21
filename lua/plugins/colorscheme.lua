return {
  {
    "nyoom-engineering/oxocarbon.nvim",
    event = "VeryLazy",
  },
  {
    "folke/tokyonight.nvim",
    opts = {
      transparent = true,
      tokyonight_dark_float = false,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    },
  },

  -- Configure LazyVim to load the colorscheme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight",
    },
  },
}
