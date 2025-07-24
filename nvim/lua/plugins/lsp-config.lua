return {
	{
		"mason-org/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
    {
		"mason-org/mason-registry",
	},
	{
		"mason-org/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"ts_ls",
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			local lspconfig = require("lspconfig")

			lspconfig.lua_ls.setup({})
			lspconfig.ts_ls.setup({
				capabilities = capabilities,
			})

            vim.diagnostic.config({
                  virtual_text = true,
                  signs = true,
                  underline = true,
                  update_in_insert = false,
            })

			vim.keymap.set("n", "gh", vim.lsp.buf.hover, { desc = "Show hover information" })
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })
			vim.keymap.set("n", "gi", vim.lsp.buf.implementation, { desc = "Go to implementation" })
			vim.keymap.set("n", "gr", require('telescope.builtin').lsp_references, { desc = "Show references" })
			vim.keymap.set({ "n" }, "<leader>ca", vim.lsp.buf.code_action, { desc = "Code Action" })
            vim.keymap.set("n", "<leader>en",
                function() vim.diagnostic.goto_next({ severity = vim.diagnostic.severity.ERROR }) end, { desc = "Go to next error" })
            vim.keymap.set("n", "<leader>ep",
                function() vim.diagnostic.goto_prev({ severity = vim.diagnostic.severity.ERROR }) end, { desc = "Go to previous error" })
            vim.keymap.set("n", "<leader>ed", vim.diagnostic.open_float, { desc = "Show diagnostic information" })
		end,
	},
}
