return {
    "williamboman/mason.nvim",
    opts = {
        ensure_installed = {
            "mypy",
            "pyright",
            "black",
            "flake8",
            "isort",
            "debugpy",
        },
    },
}
