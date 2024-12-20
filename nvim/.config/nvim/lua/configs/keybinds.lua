-- General
vim.api.nvim_set_keymap("n", "<leader>x", ":bd<CR>", { noremap = true, silent = true })

-- Telescope Keybinds
local telescope_builtins = require("telescope.builtin")
vim.keymap.set("n", "<C-p>", telescope_builtins.find_files, {})
vim.keymap.set("n", "<leader>fw", telescope_builtins.live_grep, {})
vim.keymap.set("n", "<C-b>", telescope_builtins.buffers, { desc = "Telescope Buffers" })

-- Neotree
vim.keymap.set("n", "<C-n>", "<cmd>Neotree filesystem reveal float<CR>")

-- LSP & Null-LS
vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})

vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})

-- Debugging
local dap = require("dap")
vim.keymap.set("n", "<F5>", dap.continue, {})
vim.keymap.set("n", "<F6>", dap.toggle_breakpoint, {})
vim.keymap.set("n", "<F10>", dap.step_over, {})
vim.keymap.set("n", "<F11>", dap.step_into, {})
vim.keymap.set("n", "<F12>", dap.step_out, {})

-- LazyGit
vim.keymap.set("n", "<leader>lg", "<cmd>LazyGit<CR>")
