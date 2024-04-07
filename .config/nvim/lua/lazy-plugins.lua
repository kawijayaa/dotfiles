require("lazy").setup({
	"tpope/vim-sleuth",
	{ "numToStr/Comment.nvim", opts = {} },
	require("kawijayaa/plugins/indent_line"),
	require("kawijayaa/plugins/gitsigns"),
	require("kawijayaa/plugins/which-key"),
	require("kawijayaa/plugins/telescope"),
	require("kawijayaa/plugins/lspconfig"),
	require("kawijayaa/plugins/conform"),
	require("kawijayaa/plugins/cmp"),
	require("kawijayaa/plugins/tokyonight"),
	require("kawijayaa/plugins/todo-comments"),
	require("kawijayaa/plugins/mini"),
	require("kawijayaa/plugins/treesitter"),
	require("kawijayaa/plugins/nvim-tree"),
	require("kawijayaa/plugins/lualine"),
	require("kawijayaa/plugins/harpoon"),
	require("kawijayaa/plugins/markdown-preview"),
	require("kawijayaa/plugins/vim-tmux-navigator"),
}, {
	ui = {
		icons = vim.g.have_nerd_font and {} or {
			cmd = "⌘",
			config = "🛠",
			event = "📅",
			ft = "📂",
			init = "⚙",
			keys = "🗝",
			plugin = "🔌",
			runtime = "💻",
			require = "🌙",
			source = "📄",
			start = "🚀",
			task = "📌",
			lazy = "💤 ",
		},
	},
})
