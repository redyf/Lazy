return {
  {
    "jose-elias-alvarez/null-ls.nvim",
    opts = function(_, opts)
      local nls = require("null-ls")
      -- Diagnostics
      table.insert(opts.sources, nls.builtins.diagnostics.cpplint)
      table.insert(opts.sources, nls.builtins.diagnostics.flake8)
      table.insert(opts.sources, nls.builtins.diagnostics.selene)
      table.insert(opts.sources, nls.builtins.diagnostics.statix)
      table.insert(opts.sources, nls.builtins.diagnostics.stylelint)
      -- Formatters
      table.insert(opts.sources, nls.builtins.formatting.prettierd)
      table.insert(opts.sources, nls.builtins.formatting.astyle)
      table.insert(opts.sources, nls.builtins.formatting.alejandra)
      table.insert(opts.sources, nls.builtins.formatting.prettierd)
      table.insert(opts.sources, nls.builtins.formatting.black.with({ extra_args = { "--fast" } }))
      table.insert(opts.sources, nls.builtins.formatting.rustfmt)
      table.insert(opts.sources, nls.builtins.formatting.yamlfmt)
      table.insert(opts.sources, nls.builtins.formatting.shfmt)
    end,
  },
}
