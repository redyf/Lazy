return {
  --   You can change the appearance of the bufferline separators by setting the
  -- `separator_style`. The available options are:
  -- * `slant` - Use slanted/triangular separators
  -- * `padded_slant` - Same as `slant` but with extra padding which some terminals require.
  --   If `slant` does not render correctly for you try padded this instead.
  -- * `slope` - Use slanted/triangular separators but slopped to the right
  -- * `padded_slope` - Same as `slope` but with extra padding which some terminals require.
  --   If `slope` does not render correctly for you try padded this instead.
  -- * `thick` - Increase the thickness of the separator characters
  -- * `thin` - (default) Use thin separator characters
  -- * finally you can pass in a custom list containing 2 characters which will be
  --   used as the separators e.g. `{"|", "|"}`, the first is the left and the
  --   second is the right separator

  {
    "akinsho/bufferline.nvim",
    keys = {
      { "<leader>bp", "<Cmd>BufferLineTogglePin<CR>", desc = "Toggle pin" },
      { "<leader>bP", "<Cmd>BufferLineGroupClose ungrouped<CR>", desc = "Delete non-pinned buffers" },
    },
    opts = {
      options = {
      -- stylua: ignore
      close_command = function(n) require("mini.bufremove").delete(n, false) end,
      -- stylua: ignore
      right_mouse_command = function(n) require("mini.bufremove").delete(n, false) end,
        diagnostics = "nvim_lsp",
        always_show_bufferline = false,
        separator_style = "slope",
        diagnostics_indicator = function(_, _, diag)
          local icons = require("lazyvim.config").icons.diagnostics
          local ret = (diag.error and icons.Error .. diag.error .. " " or "")
            .. (diag.warning and icons.Warn .. diag.warning or "")
          return vim.trim(ret)
        end,
        offsets = {
          {
            filetype = "neo-tree",
            text = "Neo-tree",
            highlight = "Directory",
            text_align = "left",
          },
        },
      },
    },
  },
}
