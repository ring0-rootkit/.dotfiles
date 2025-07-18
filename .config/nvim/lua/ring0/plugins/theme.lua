return {
	{
		"catppuccin/nvim",
		config = function()
			require("catppuccin").setup({
				-- nothing so far
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
