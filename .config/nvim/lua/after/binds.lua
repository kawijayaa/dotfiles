vim.keymap.set("n", "<leader>lf", ":%s/\\r//g<CR>", { desc = "Remove ^M" })
vim.keymap.set("x", "p", [["_dP]])
