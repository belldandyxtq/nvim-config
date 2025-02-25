-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.opt.listchars = { eol = "↵" }
vim.opt.list = true
vim.opt.termguicolors = true

vim.g.lazyvim_python_lsp = "pyright"
vim.g.lazyvim_python_ruff = "ruff"

opts = function(_, opts)
    local servers = { "pyright", "basedpyright", "ruff", "ruff_lsp", ruff, lsp }
    for _, server in ipairs(servers) do
        opts.servers[server] = opts.servers[server] or {}
        opts.servers[server].enabled = server == lsp or server == ruff
    end
end
