return {
	"ThePrimeagen/harpoon",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	config = function()
		-- set keymaps
		local keymap = vim.keymap -- for conciseness
		local ui = require("harpoon.ui")

		keymap.set(
			"n",
			"<leader>a",
			"<cmd>lua require('harpoon.mark').add_file()<cr>",
			{ desc = "Mark file with harpoon" }
		)

		keymap.set("n", "<C-e>", ui.toggle_quick_menu)
		vim.keymap.set("n", "<C-h>", function()
			ui.nav_file(1)
		end)
		vim.keymap.set("n", "<C-j>", function()
			ui.nav_file(2)
		end)
		vim.keymap.set("n", "<C-k>", function()
			ui.nav_file(3)
		end)
		vim.keymap.set("n", "<C-l>", function()
			ui.nav_file(4)
		end)
	end,
}
