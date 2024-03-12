return {
	"williamboman/mason.nvim",
	dependencies = {
		"WhoIsSethDaniel/mason-tool-installer.nvim",

	},
	config = function()
		-- import mason
		local mason = require("mason")

		-- import mason-lspconfig
		local mason_tool_installer = require("mason-tool-installer")


		-- import mason-null-ls

		-- enable mason and configure icons
		mason.setup({
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		})

		    mason_tool_installer.setup({
      ensure_installed = {
        "rust-analyzer", -- prettier formatter
        "prettier", -- prettier formatter
	"clangd", -- c/c++ language server
	"clang-format", -- c/c++ formatter
	"codelldb", -- c/c++ debugger
        "stylua", -- lua formatter
        "isort", -- python formatter
        "black", -- python formatter
        "pylint", -- python linter
        "eslint_d", -- js linter
      },
    })

	end,
}
