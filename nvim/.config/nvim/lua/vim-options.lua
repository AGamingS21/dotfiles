vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set clipboard=unnamedplus")
vim.g.mapleader = " "
vim.opt.swapfile = false
vim.wo.number = true

vim.o.winborder = 'single'

vim.keymap.set("n", "<C-t>", "<Cmd>enew<CR>", {})
