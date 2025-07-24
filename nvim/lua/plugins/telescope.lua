return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			local builtin = require("telescope.builtin")
			vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
			vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope find occurences" })
			vim.keymap.set("v", "<leader>fg", 'y<ESC>:Telescope live_grep default_text=<c-r>0<CR>', { noremap = true, silent = true, desc = "Telescope find occurences of selected text" })
			vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
			vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help" })
			vim.keymap.set("n", "<leader>fo", builtin.oldfiles, { desc = "Telescope recent" })
			vim.keymap.set("n", "<leader>fc", builtin.commands, { desc = "Telescope vim command" })
		end,
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			require("telescope").setup({
				extension = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
			})
			require("telescope").load_extension("ui-select")
		end,
	},
}
