return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	opts = {
        preset = "helix",
		spec = {
			{
				mode = { "n", "v" },
				{ "g", group = "Go to" },
				{ "<leader>", group = "Leader Key" },
				{ "<leader>b", group = "Buffer" },
				{ "<leader>c", group = "Code" },
				{ "<leader>e", group = "Error" },
				{ "<leader>f", group = "Find" },
				{ "<leader>g", group = "Git" },
				{ "<leader>n", group = "Tree" },
				{ "<leader>q", group = "Quit" },
				{ "<leader>w", group = "Save" },
			},
		},
	},
	keys = {
		{
			"<leader>?",
			function()
				require("which-key").show({ global = false })
			end,
			desc = "Buffer Local Keymaps (which-key)",
		},
	},
}
