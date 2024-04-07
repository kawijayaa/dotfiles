return {
	{
		"iamcco/markdown-preview.nvim",
		cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
		ft = { "markdown" },
		config = function()
			vim.keymap.set("n", "<leader>md", ":MarkdownPreview<CR>", { desc = "Open markdown preview on browser." })
		end,
		build = function()
			vim.fn["mkdp#util#install"]()
		end,
	},
}
