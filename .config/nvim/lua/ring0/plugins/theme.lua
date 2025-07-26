return {
	{
		"rose-pine/neovim",
		config = function()
			require("rose-pine").setup({
				highlight_groups = {
					StatusLine = { fg = "love", bg = "love", blend = 10 },
					StatusLineNC = { fg = "subtle", bg = "surface" },
					StatusLineTerm = { fg = "love", bg = "love", blend = 10 },
				},
				dark_variant = "moon",
				styles = {
					transparency = true,
				},
				palette = {
					moon = {
						text = "#c0c0c0",
					},
					dawn = {
						text = "#303030",
						surface = "#c0c0c0",
					},
				},
			})
		end,
	},
	{
		"shaunsingh/nord.nvim",
	},
	{
		"theme",
		init = function()
			vim.cmd("colorscheme rose-pine")
		end,
	},
}
