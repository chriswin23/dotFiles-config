return {
	"akinsho/bufferline.nvim",
	version = "*",
	dependencies = "nvim-tree/nvim-web-devicons",
	config = function()
		require("bufferline").setup({})
		vim.opt.termguicolors = true
		vim.keymap.set("n", "<leader>bn", ":bn<CR>", { noremap = true, silent = true, desc = 'Buffer next' })
		vim.keymap.set("n", "<leader>bp", ":bp<CR>", { noremap = true, silent = true, desc = 'Buffer previous' })
		vim.keymap.set("n", "<leader>bd", ":bd<CR>", { noremap = true, silent = true, desc = 'Buffer quit' })
		vim.keymap.set("n", "<leader>bp", ':BufferLineTogglePin<CR>', { noremap = true, silent = true, desc = 'Buffer toggle pin' })
		vim.keymap.set("n", "<leader>bP", ':BufferLineGroupClose ungrouped<CR>', { noremap = true, silent = true, desc = 'Buffer close non-pinned' })
		vim.keymap.set("n", "<leader>bl", ":Telescope buffers<CR>", { noremap = true, silent = true, desc = 'Buffer list' })
	end
}
