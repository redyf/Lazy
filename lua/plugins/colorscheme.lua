return {
  {
    "nyoom-engineering/oxocarbon.nvim",
    event = "VeryLazy",
  },
  {
    "tiagovla/tokyodark.nvim",
    event = "VeryLazy",
  },

  -- Configure LazyVim to load the colorscheme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyodark",
    },
  },
}
