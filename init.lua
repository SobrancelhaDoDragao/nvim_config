local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end

vim.opt.rtp:prepend(lazypath)

require("vim-options")
require("lazy").setup("plugins")
-- Configuracao do lsp zero
local lsp_zero = require("lsp-zero")

lsp_zero.on_attach(function(client, bufnr)
    -- see :help lsp-zero-keybindings
    -- to learn the available actions
    lsp_zero.default_keymaps({ buffer = bufnr })
end)

require("mason").setup({})

require("mason-lspconfig").setup({
    ensure_installed = {
        "lua_ls",
        "rust_analyzer",
        "tsserver",
    },
    -- Configuracao padrao de todos os LSP que serao instalados
    handlers = {
        lsp_zero.default_setup,
    },
})

vim.cmd.colorscheme("nightfox")
