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
				vim.keymap.set("n", "<leader>x", ":NvimTreeToggle<CR>", { desc = "Toggle Explorer" }),
			})
		end,
	},
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require("lualine").setup({
				disabled_filetypes = { "packer", "NvimTree" },
			})
		end,
	},
	{
		"ThePrimeagen/harpoon",
		branch = "harpoon2",
		dependencies = { "nvim-lua/plenary.nvim", "nvim-telescope/telescope.nvim" },
	},
	{
		"iamcco/markdown-preview.nvim",
		cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
		ft = { "markdown" },
		build = function()
			vim.fn["mkdp#util#install"]()
		end,
	},
	-- {
	--   'Pocco81/auto-save.nvim',
	--   config = function()
	--     require('auto-save').setup {
	--       enabled = false,
	--       debounce_delay = 1000,
	--       vim.keymap.set('n', '<leader>as', ':ASToggle<CR>'),
	--     }
	--   end,
	-- },
}
