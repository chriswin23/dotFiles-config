return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	lazy = false,
	opts = {},
	config = function()
		vim.keymap.set("n", "<leader>no", ":Neotree filesystem reveal left<CR>", { desc = 'Neotree open' })
		vim.keymap.set("n", "<leader>nq", ":Neotree close<CR>", { desc = 'Neotree close' })
	end,
}
