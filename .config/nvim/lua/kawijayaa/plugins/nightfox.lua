return {
	{
		"EdenEast/nightfox.nvim",
		lazy = false,
		priority = 1000,
		init = function()
			vim.cmd.colorscheme("carbonfox")
		end,
		config = function()
			require("nightfox").setup({
				groups = {
					carbonfox = {
						NvimLogo1 = { fg = "palette.magenta" },
						NvimLogo2 = { fg = "palette.orange" },
					},
				},
			})
		end,
	},
}
