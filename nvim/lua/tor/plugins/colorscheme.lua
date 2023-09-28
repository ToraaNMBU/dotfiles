return {
	"rose-pine/neovim",
	name = "rose-pine",
	config = function()
		require("rose-pine").setup({
			variant = "auto",
			dark_variant = "main",
			bold_vert_split = false,
			dim_nc_background = false,
			disable_background = true, -- Disable the background color
			disable_float_background = false,
			disable_italics = false,
			highlight_groups = {
				TelescopeBorder = { fg = "highlight_high", bg = "none" },
				TelescopeNormal = { bg = "none" },
				TelescopePromptNormal = { bg = "base" },
				TelescopeResultsNormal = { fg = "subtle", bg = "none" },
				TelescopeSelection = { fg = "text", bg = "base" },
				TelescopeSelectionCaret = { fg = "rose", bg = "rose" },
			},
		})

		-- Set the colorscheme
		vim.cmd("colorscheme rose-pine")
	end,
}
