return {
	{
		"FabijanZulj/blame.nvim",
		config = function()
			require("blame").setup()
			vim.keymap.set("n", "<leader>b", ":BlameToggle virtual<CR>", { silent = true })
		end,
	},
}
