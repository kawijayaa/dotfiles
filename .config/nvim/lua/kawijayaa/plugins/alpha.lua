return {
	{
		"goolord/alpha-nvim",
		config = function()
			local alpha = require("alpha")
			local dashboard = require("alpha.themes.dashboard")

			dashboard.section.header.val = {
				[[                                                                     ]],
				[[       ████ ██████           █████      ██                     ]],
				[[      ███████████             █████                             ]],
				[[      █████████ ███████████████████ ███   ███████████   ]],
				[[     █████████  ███    █████████████ █████ ██████████████   ]],
				[[    █████████ ██████████ █████████ █████ █████ ████ █████   ]],
				[[  ███████████ ███    ███ █████████ █████ █████ ████ █████  ]],
				[[ ██████  █████████████████████ ████ █████ █████ ████ ██████ ]],
				[[                                                                       ]],
			}

			dashboard.section.header.opts.hl = {
				{ { "NvimLogo2", 0, 1 }, { "NvimLogo1", 46, 52 } },
				{ { "NvimLogo2", 0, 55 }, { "NvimLogo1", 61, 102 } },
				{ { "NvimLogo2", 0, 55 }, { "NvimLogo1", 64, 90 } },
				{ { "NvimLogo2", 0, 91 }, { "NvimLogo1", 91, 183 } },
				{ { "NvimLogo2", 0, 86 }, { "NvimLogo1", 86, 181 } },
				{ { "NvimLogo2", 0, 99 }, { "NvimLogo1", 99, 185 } },
				{ { "NvimLogo2", 0, 98 }, { "NvimLogo1", 98, 185 } },
				{ { "NvimLogo2", 0, 109 }, { "NvimLogo1", 109, 195 } },
			}

			_Gopts = {
				position = "center",
				hl = "Type",
			}

			-- Set menu
			dashboard.section.buttons.val = {
				dashboard.button("n", "   New file", ":ene <BAR> startinsert <CR>"),
				dashboard.button("SPC s f", "   Search File"),
				dashboard.button("SPC s g", "󰱼   Search Grep"),
				dashboard.button("SPC s .", "   Search Recent"),
				dashboard.button("SPC m", "󱌣   Mason"),
				dashboard.button("SPC z", "󰒲   Lazy"),
			}

			local function footer()
				return "muhammadoka.dev"
			end
			dashboard.section.footer.val = footer()

			dashboard.opts.opts.noautocmd = true

			require("alpha").setup(dashboard.opts)
		end,
	},
}
