return {
	"goolord/alpha-nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.startify")

		dashboard.section.header.val = {
			[[      __  __  ____  ____  ____  ____  ____  ____  ____  ____ ]],
			[[     /  \/  \(  __)(  __)(  __)(  __)(  __)(  _ \(  __)(  _ \]],
			[[    (  O    / ) _)  ) _)  ) _)  ) _)  ) _)  )   / ) _)  )   /]],
			[[     \__/\_/(____)(____)(____)(____)(____)(__\_)(____)(__\_) ]],
		}
		alpha.setup(dashboard.opts)
	end,
}
