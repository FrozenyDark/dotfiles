return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	opts = {
		flavour = "mocha",
		transperent_background = true,
		term_colors = true,
		no_italic = false,
		no_bold = false,
		no_underline = false,
		integrations = {
			cmp = true,
			telescope = true,
		},
	},
	config = function()
		vim.cmd.colorscheme("catppuccin")
		vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
		vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
	end,
}
