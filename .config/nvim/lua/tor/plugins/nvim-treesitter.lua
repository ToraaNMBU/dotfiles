return {
	{
		"nvim-treesitter/nvim-treesitter",
		event = { "BufReadPre", "BufNewFile" },
		build = ":TSUpdate",
		dependencies = {
			"windwp/nvim-ts-autotag",
		},
		config = function()
			local treesitter = require("nvim-treesitter.configs")

			treesitter.setup({
				highlight = {
					enable = true,
				},
				indent = { enable = true },
				autotag = { enable = true },
				ensure_installed = {
					"markdown_inline",
					"bash",
					"lua",
					"vim",
					"dockerfile",
					"gitignore",
				},
				context_commentstring = {
					enable = true,
					enable_autocmd = false,
				},
				auto_install = true,
			})
		end,
	},
}
