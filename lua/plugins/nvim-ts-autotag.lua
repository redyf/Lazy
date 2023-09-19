return {
    {
        "windwp/nvim-ts-autotag",
        event = "VeryLazy",
        opts = function ()
          require('nvim-ts-autotag').setup()
        end,
    },
}
