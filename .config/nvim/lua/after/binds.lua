-- Convert CRLF to LF
vim.keymap.set("n", "<leader>lf", ":%s/\\r//g<CR>", { desc = "Remove ^M" })

-- Best remap ever
vim.keymap.set("x", "p", [["_dP]])

-- Move line keybind
vim.keymap.set("n", "<A-j>", ":m +1<CR>", { desc = "Move current line down" })
vim.keymap.set("n", "<A-k>", ":m -2<CR>", { desc = "Move current line up" })
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv", { desc = "Move current line down" })
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv", { desc = "Move current line up" })
