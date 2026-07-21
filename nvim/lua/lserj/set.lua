vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.scrolloff = 8

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
-- when using the >> or << commands, shift lines by 4 spaces 
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.showmatch = true

vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true


-- set cyrillic keympa
vim.o.keymap="russian-jcukenmac"

-- when keymap is set it is set by default, lets rewind it back to english
vim.o.iminsert=0
vim.o.imsearch=0
