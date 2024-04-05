-- Convert CRLF to LF
vim.keymap.set("n", "<leader>lf", ":%s/\\r//g<CR>", { desc = "Remove ^M" })

-- Best remap ever
vim.keymap.set("x", "p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "y", [["+y]])
vim.keymap.set("n", "Y", [["+Y]])
vim.keymap.set({ "n", "v" }, "d", [["_d]])

-- Move line keybind
vim.keymap.set("n", "<A-k>", ":m -2<CR>", { desc = "Move current line up" })
vim.keymap.set("n", "<A-j>", ":m +1<CR>", { desc = "Move current line down" })
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv", { desc = "Move current line down" })
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv", { desc = "Move current line up" })

-- Insert indented when line is empty
vim.keymap.set("n", "i", function()
	return string.match(vim.api.nvim_get_current_line(), "%g") == nil and "cc" or "i"
end, { expr = true, noremap = true })
