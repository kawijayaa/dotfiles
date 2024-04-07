return {
	{
		"ThePrimeagen/harpoon",
		branch = "harpoon2",
		dependencies = { "nvim-lua/plenary.nvim", "nvim-telescope/telescope.nvim" },
		config = function()
			local harpoon = require("harpoon")
			harpoon:setup({})

			vim.keymap.set("n", "<C-e>", function()
				harpoon.ui:toggle_quick_menu(harpoon:list())
			end, { desc = "Open harpoon window" })
			vim.keymap.set("n", "<leader>a", function()
				harpoon:list():add()
			end, { desc = "Add current file to harpoon" })
			vim.keymap.set("n", "<C-A-P>", function()
				harpoon:list():prev()
			end, { desc = "Go to previous file on harpoon" })
			vim.keymap.set("n", "<C-A-N>", function()
				harpoon:list():next()
			end, { desc = "Go to next file on harpoon" })
		end,
	},
}
