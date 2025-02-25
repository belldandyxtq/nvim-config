return {
    "williamboman/mason.nvim",
    opts = {
        ensure_installed = {
            "mypy",
            "ruff",
            "pyright",
            "black",
            "debugpy",
        },
    },
}
