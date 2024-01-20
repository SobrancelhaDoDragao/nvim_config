vim.g.mapleader = " "

vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set number")
vim.cmd("set relativenumber")
vim.cmd("set cursorline")

vim.opt.wrap = false
vim.opt.termguicolors = true
vim.opt.updatetime = 50

vim.keymap.set("n", "<leader>y", '"a')
vim.keymap.set("v", "<leader>y", '"a')

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
