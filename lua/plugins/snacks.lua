return {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    keys = {
        -- Top Pickers & Explorer
        {
            "<C-g>",
            function()
                Snacks.picker.grep()
            end,
            desc = "Grep",
        },
    },
}
