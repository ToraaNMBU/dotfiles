return {
	"catppuccin/nvim", 
	priority = 1000,

	--config = function()
		--require('rose-pine').setup({
			--disable_background = true,
			--disable_float_background = true,
		--
		--})

	--vim.cmd('colorscheme rose-pine')
	--vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	--vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

	--end
	config = function()
		vim.cmd('colorscheme catppuccin')
	end
}


