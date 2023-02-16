vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

--move lines up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

--cursor stays when appending lines from below
vim.keymap.set("n", "J", "mzJ`z")

--when pasting over, clipboard stays the same
vim.keymap.set("x", "<leader>p", "\"_dP")

--copy to system clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")

--lets you edit current word by grep
vim.keymap.set("n", "<leader>ss", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

--lets you edit words but asking for each one
vim.keymap.set("n", "<leader>sa", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gIc<Left><Left><Left><Left>]])
