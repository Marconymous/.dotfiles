local map = vim.keymap.set

-- General
vim.api.nvim_set_keymap("n", "<leader>x", ":bd<CR>", { noremap = true, silent = true })

-- Navigation
map('n', '<C-h>', '<C-w>h')
map('n', '<C-j>', '<C-w>j')
map('n', '<C-k>', '<C-w>k')
map('n', '<C-l>', '<C-w>l')

-- Telescope Keybinds
local telescope_builtins = require("telescope.builtin")
map("n", "<C-p>", function ()
  telescope_builtins.find_files({follow = true})
end , {})
map("n", "<leader>fw", telescope_builtins.live_grep, {})
map("n", "<C-b>", telescope_builtins.buffers, { desc = "Telescope Buffers" })

-- Neotree
map("n", "<C-n>", "<cmd>Neotree filesystem reveal float<CR>")

-- LSP & Null-LS
map("n", "K", vim.lsp.buf.hover, {})
map("n", "gd", vim.lsp.buf.definition, {})
map({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})

map("n", "<leader>gf", vim.lsp.buf.format, {})

-- Debugging
local dap = require("dap")
local dapui = require("dapui")

map("n", "<F4>", function()
	dap.terminate()
	dapui.close()
end, {})
map("n", "<F5>", dap.continue, {})
map("n", "<F6>", dap.toggle_breakpoint, {})
map("n", "<F10>", dap.step_over, {})
map("n", "<F11>", dap.step_into, {})
map("n", "<F12>", dap.step_out, {})

-- LazyGit
map("n", "<leader>lg", "<cmd>LazyGit<CR>")

-- Comment.nvim
local comment = require("Comment.api")

map("n", "§", comment.toggle.linewise.current, {})
map("n", "°", comment.toggle.blockwise.current, {})

--   Visual Mode Comments

local function get_selection()

	local esc = vim.api.nvim_replace_termcodes("<Esc>", true, false, true)
	vim.api.nvim_feedkeys(esc, "x", false)

	local line1 = vim.fn.line("'<")
	local line2 = vim.fn.line("'>")
  return {line1, line2}
end

map("x", "§", function()
	comment.toggle.linewise(vim.fn.visualmode(get_selection()))
end, {})

map("x", "°", function()
	comment.toggle.blockwise(vim.fn.visualmode(get_selection()))
end, {})

-- Floating term
local fterm = require('FTerm')
map('n', '<A-i>', fterm.toggle, {})
map('t', '<A-i>', fterm.toggle, {})
