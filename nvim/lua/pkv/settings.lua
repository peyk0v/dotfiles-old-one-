vim.g.mapleader = " "

vim.opt.relativenumber = true

vim.opt.cursorline = true

--vim.opt.smartindent = true
-- for other type of files:
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
-- for GO files only:
vim.api.nvim_create_autocmd("Filetype", {
	pattern = "go",
	command = "setlocal tabstop=4 shiftwidth=4 softtabstop=4"
})
--vim.cmd("autocmd Filetype go setlocal tabstop=4 shiftwidth=4")

vim.opt.swapfile = false
vim.opt.backup = false

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

