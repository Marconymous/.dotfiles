local utils = require("utils")

return {
	"mfussenegger/nvim-dap",
	dependencies = {
		"mfussenegger/nvim-dap-python",
		"nvim-neotest/nvim-nio",
		"rcarriga/nvim-dap-ui",
	},
	config = function()
		local dap, dapui = require("dap"), require("dapui")

		-- Dapui Config
		dapui.setup()
		dap.listeners.before.attach.dapui_config = function()
			dapui.open()
		end
		dap.listeners.before.launch.dapui_config = function()
			dapui.open()
		end

		-- DAP Python
		local dap_python = require("dap-python")
		dap_python.setup(utils.mason_path .. "packages/debugpy/venv/bin/python")

		dap_python.test_runner = "pytest"

		table.insert(dap.configurations.python, {
			name = "Test",
			type = "debugpy",
			request = "launch",
			module = "test",
			jinja = true,
		})
	end,
}
