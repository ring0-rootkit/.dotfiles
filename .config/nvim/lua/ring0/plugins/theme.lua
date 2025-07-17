return {
	{
		"catppuccin/nvim",
		config = function()
			require("catppuccin").setup({
				transparent_background = true,
			})
		end,
	},
	{
		"theme",
		init = function()
			vim.cmd("colorscheme catppuccin-mocha")
		end,
	},
}
