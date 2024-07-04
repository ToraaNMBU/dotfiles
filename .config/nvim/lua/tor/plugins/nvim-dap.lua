return {
	"mfussenegger/nvim-dap",
	dependencies = {
		{ "rcarriga/nvim-dap-ui" },
		{ "nvim-neotest/nvim-nio" },
	},
	config = function()
		require("dapui").setup()

		local dap, dapui = require("dap"), require("dapui")
		dap.listeners.before.attach.dapui_config = function()
			dapui.open()
		end
		dap.listeners.before.launch.dapui_config = function()
			dapui.open()
		end
		dap.listeners.before.event_terminated.dapui_config = function()
			dapui.close()
		end
		dap.listeners.before.event_exited.dapui_config = function()
			dapui.close()
		end

		vim.keymap.set("n", "<Leader>dt", dap.toggle_breakpoint, {})
		vim.keymap.set("n", "<Leader>dc", dap.continue, {})

		vim.fn.sign_define("DapBreakpoint", { text = "📍", texthl = "", linehl = "", numhl = "" })
		vim.fn.sign_define("DapStopped", { text = "👉", texthl = "", linehl = "", numhl = "" })

		-- c++ debugger
		dap.adapters.cppdbg = {
			id = "cppdbg",
			type = "executable",
			command = "/home/nbmurobotics/.local/share/nvim/mason/packages/cpptools/extension/debugAdapters/bin/OpenDebugAD7",
			options = {
				detached = false,
			},
		}

		dap.configurations.cpp = {
			{
				name = "Launch",
				type = "cppdbg",
				request = "launch",
				cwd = "${workspaceFolder}",
				stopAtEntry = true,
				program = function()
					return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
				end,
				runInTerminal = false,
			},
		}
	end,
}
