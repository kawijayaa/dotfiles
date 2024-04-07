return {
	{
		"nvim-tree/nvim-tree.lua",
		version = "*",
		lazy = false,
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
		config = function()
			require("nvim-tree").setup({
				filters = {
					custom = { "node_modules", ".git" },
					git_ignored = false,
				},
				vim.keymap.set("n", "<leader>x", ":NvimTreeToggle<CR>", { desc = "Toggle Explorer" }),
			})
		end,
	},
}
