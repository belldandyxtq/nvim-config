-- bootstrap lazy.nvim, LazyVim and your plugins↵
require("config.lazy")
require("config.colors")
vim.opt.clipboard = "unnamed"
vim.opt.mouse = "a"

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
    callback = function()
        -- try_lint without arguments runs the linters defined in `linters_by_ft`
        -- for the current filetype
        require("lint").try_lint()
    end,
})
