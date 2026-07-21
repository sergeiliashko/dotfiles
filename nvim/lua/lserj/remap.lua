vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<C-f>", "<cmd>!tmux neww tmux-sessionizer<CR>", {silent = true})
vim.keymap.set("n", "<leader><CR>","<cmd>so ~/.config/nvim/init.lua<CR>")
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("x", "<leader>p", [["_dP]])
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])


vim.keymap.set("v", "J", ":m'>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m'<-2<CR>gv=gv")


vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")


vim.keymap.set({'i', 'c'}, '<F9>', '<C-^>', {silent=true})
vim.keymap.set('n', '<F9>', 'a<C-^><Esc>',{silent=true})
vim.keymap.set('v', '<F9>', '<Esc>a<C-^><Esc>gv',{silent=true})

