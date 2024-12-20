local M = {}

M.mason_path = vim.fn.glob(vim.fn.stdpath("data") .. "/mason/")

return M
