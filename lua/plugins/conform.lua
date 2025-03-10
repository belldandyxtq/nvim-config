return {
    "stevearc/conform.nvim",

    formatters_by_ft = {
        lua = {
            {
                exe = "stylua",
                args = { "-" },
                stdin = true,
            },
        },
        python = {
            {
                exe = "black",
                args = { "--line-length", "120" },
                stdin = true,
            },
            {
                exe = "isort",
                args = { "-" },
                stdin = true,
            },
        },
        rust = {
            {
                exe = "rustfmt",
                args = { "--emit=stdout" },
                stdin = true,
            },
        },
        sh = {
            {
                exe = "shfmt",
                args = { "-i", "2" },
                stdin = true,
            },
        },
        yaml = {
            {
                exe = "prettier",
                args = { "--parser=yaml" },
                stdin = true,
            },
        },
    },
}
