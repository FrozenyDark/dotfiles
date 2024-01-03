return {
	"neovim/nvim-lspconfig",
	config = function()
		local lspconfig = require("lspconfig")

		lspconfig.lua_ls.setup({
			on_attach = function()
				vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Hover info" })
				vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { desc = "Show declaration" })
				vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Show definition" })
				vim.keymap.set("n", "gi", vim.lsp.buf.implementation, { desc = "Show implementation" })
				vim.keymap.set("n", "<leader>a", vim.lsp.buf.code_action, { desc = "Show code actions" })
				vim.keymap.set("n", "<leader>r", vim.lsp.buf.rename, { desc = "Rename" })
				vim.keymap.set("n", "<leader>fr", vim.lsp.buf.references, { desc = "Show references" })
				vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Previous diagnostic" })
				vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "next diagnostic" })
			end,
			capabilities = require("cmp_nvim_lsp").default_capabilities(),
			settings = {
				Lua = {
					diagnostics = {
						globals = { "vim" },
					},
					workspace = {
						library = {
							[vim.fn.expand("$VIMRUNTIME/lua")] = true,
							[vim.fn.stdpath("config") .. "/lua"] = true,
						},
					},
				},
			},
		})
		lspconfig.rust_analyzer.setup({})
		lspconfig.cssls.setup({})
		lspconfig.emmet_ls.setup({
			filetypes = { "html", "typescriptreact", "javascriptreact", "css", "sass", "scss", "less", "svelte" },
		})
	end,
}
