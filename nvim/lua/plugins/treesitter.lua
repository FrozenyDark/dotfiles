return {
	"nvim-treesitter/nvim-treesitter",
	build = function()
		require("nvim-treesitter.install").update({ with_sync = true })
	end,
	config = function()
		require("nvim-treesitter.configs").setup({
			highlight = {
				enable = true,
			},
			indent = { enable = true },
			autotag = { enable = true },
			ensure_installed = {
				"json",
				"lua",
				"vim",
				"html",
				"css",
				"javascript",
				"bash",
				"gitignore",
				"rust",
				"c",
				"cpp",
			},
			auto_install = true,
		})
	end,
}
