return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		opts = {
			automatic_installation = true,
			ensure_installed = {
				"clangd",
				"cssls",
				"html",
				"jsonls",
				"tsserver",
				"lua_ls",
				"rust_analyzer",
				"taplo",
			},
		},
	},
	{
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		opts = {
			automatic_installation = true,
			ensure_installed = {
				"prettier",
				"stylua",
				"eslint_d",
				"ast-grep",
				"clang-format",
			},
		},
	},
}
